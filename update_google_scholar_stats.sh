#!/usr/bin/env bash
set -Eeuo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CRAWLER_DIR="$ROOT_DIR/google_scholar_crawler"
RESULTS_DIR="$CRAWLER_DIR/results"
PYTHON_BIN="${PYTHON_BIN:-python3}"
REMOTE="${GOOGLE_SCHOLAR_REMOTE:-origin}"
STATS_BRANCH="${GOOGLE_SCHOLAR_STATS_BRANCH:-google-scholar-stats}"

find_scholar_id_from_config() {
  "$PYTHON_BIN" - "$ROOT_DIR/_config.yml" <<'PY'
from __future__ import annotations

import re
import sys
from pathlib import Path

config_path = Path(sys.argv[1])
text = config_path.read_text(encoding="utf-8")
match = re.search(r"googlescholar:\s*['\"]?[^'\"\n]*[?&]user=([^&'\"\s]+)", text)
print(match.group(1) if match else "")
PY
}

SCHOLAR_ID="${GOOGLE_SCHOLAR_ID:-}"
if [[ -z "$SCHOLAR_ID" ]]; then
  SCHOLAR_ID="$(find_scholar_id_from_config)"
fi

if [[ -z "$SCHOLAR_ID" ]]; then
  echo "[error] GOOGLE_SCHOLAR_ID is not set and no author.googlescholar ID was found in _config.yml." >&2
  exit 1
fi

cd "$ROOT_DIR"

if ! "$PYTHON_BIN" -c "import scholarly" >/dev/null 2>&1; then
  echo "[info] Installing crawler dependencies..."
  "$PYTHON_BIN" -m pip install -r "$CRAWLER_DIR/requirements.txt"
fi

echo "[info] Fetching Google Scholar stats for $SCHOLAR_ID..."
GOOGLE_SCHOLAR_ID="$SCHOLAR_ID" "$PYTHON_BIN" "$CRAWLER_DIR/main.py"

if [[ ! -f "$RESULTS_DIR/gs_data.json" || ! -f "$RESULTS_DIR/gs_data_shieldsio.json" ]]; then
  echo "[error] Expected result files were not generated in $RESULTS_DIR." >&2
  exit 1
fi

WORKTREE_DIR="$(mktemp -d "${TMPDIR:-/tmp}/google-scholar-stats.XXXXXX")"
cleanup() {
  git -C "$ROOT_DIR" worktree remove --force "$WORKTREE_DIR" >/dev/null 2>&1 || rm -rf "$WORKTREE_DIR"
}
trap cleanup EXIT

if git ls-remote --exit-code --heads "$REMOTE" "$STATS_BRANCH" >/dev/null 2>&1; then
  git fetch "$REMOTE" "+refs/heads/$STATS_BRANCH:refs/heads/$STATS_BRANCH"
fi

if git show-ref --verify --quiet "refs/heads/$STATS_BRANCH"; then
  git worktree add "$WORKTREE_DIR" "$STATS_BRANCH"
else
  git worktree add --detach "$WORKTREE_DIR" HEAD
  git -C "$WORKTREE_DIR" checkout --orphan "$STATS_BRANCH"
  git -C "$WORKTREE_DIR" rm -r --ignore-unmatch . >/dev/null 2>&1 || true
fi

git -C "$WORKTREE_DIR" rm -r --ignore-unmatch . >/dev/null 2>&1 || true
cp "$RESULTS_DIR/gs_data.json" "$WORKTREE_DIR/gs_data.json"
cp "$RESULTS_DIR/gs_data_shieldsio.json" "$WORKTREE_DIR/gs_data_shieldsio.json"

git -C "$WORKTREE_DIR" add gs_data.json gs_data_shieldsio.json
if git -C "$WORKTREE_DIR" diff --cached --quiet; then
  echo "[info] No citation changes to publish."
  exit 0
fi

git -C "$WORKTREE_DIR" \
  -c user.name="google-scholar-stats-bot" \
  -c user.email="google-scholar-stats-bot@users.noreply.github.com" \
  commit -m "Update Google Scholar stats"

git -C "$WORKTREE_DIR" push "$REMOTE" "HEAD:$STATS_BRANCH"
echo "[info] Published Google Scholar stats to $REMOTE/$STATS_BRANCH."

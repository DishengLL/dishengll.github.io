#!/usr/bin/env bash
set -Eeuo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
UPDATE_SCRIPT="$ROOT_DIR/update_google_scholar_stats.sh"
LOG_FILE="$ROOT_DIR/google_scholar_crawler/google_scholar_stats_cron.log"
PYTHON_BIN="${PYTHON_BIN:-$(command -v python3)}"
SCHEDULE="${GOOGLE_SCHOLAR_CRON_SCHEDULE:-0 4 * * *}"

if [[ ! -x "$UPDATE_SCRIPT" ]]; then
  chmod +x "$UPDATE_SCRIPT"
fi

CRON_LINE="$SCHEDULE GOOGLE_SCHOLAR_ID=\"${GOOGLE_SCHOLAR_ID:-}\" PYTHON_BIN=\"$PYTHON_BIN\" \"$UPDATE_SCRIPT\" >> \"$LOG_FILE\" 2>&1"

if ! command -v crontab >/dev/null 2>&1; then
  echo "[error] crontab is not available on this machine." >&2
  exit 1
fi

{
  crontab -l 2>/dev/null | grep -vF "$UPDATE_SCRIPT" || true
  echo "$CRON_LINE"
} | crontab -

echo "[info] Installed cron job:"
echo "$CRON_LINE"
echo "[info] Logs will be written to $LOG_FILE"

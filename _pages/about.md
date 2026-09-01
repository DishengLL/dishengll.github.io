---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}

<span class='anchor' id='about-me'></span>

I am a PhD candidate in Computer Science at [Case Western Reserve University (CWRU)](https://engineering.case.edu/computer-and-data-sciences), where I am advised by Prof. [Yu Yin](https://yin-yu.github.io/).

Prior to that, I was a visiting student at [ShanghaiTech University](https://www.shanghaitech.edu.cn/eng), supervised by Prof. [Dinggang Shen](https://scholar.google.com/citations?user=v6VYQC8AAAAJ&hl=en). I received my M.S. in Information Science from [University of Pittsburgh (Pitt)](https://www.sci.pitt.edu/) in 2022, supervised by Prof. [Yu-Ru Lin](https://www.yurulin.com/). I received my B.S. in Computing and Information Science from [Guangdong University of Technology](https://www.gdut.edu.cn/), supervised by Prof. [Weihua He](https://sites.google.com/view/weihuahe/).

I have broad research interests in **Computer Vision** and **Vision-Language Models**, with a particular focus on advancing **spatial intelligence** in the next generation of AI systems.  <a href="https://scholar.google.com/citations?user=xlIBwREAAAAJ&hl=en">
  <img src="https://img.shields.io/endpoint?url={{ url | url_encode }}&logo=Google%20Scholar&labelColor=f6f6f6&color=9cf&style=flat&label=citations"
       alt="Google Scholar citations">
</a>


<!-- # 🔥 News
- *2022.02*: &nbsp;🎉🎉 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare aliquet ipsum, ac tempus justo dapibus sit amet.  -->

# 📚 Selected Publications 
<div class='paper-box'><div class='paper-box-image'><div><div class="badge">2025.10</div><img src='/images/Project/Spatial_VLM.png' alt="sym" width="90%"></div></div>
<div class='paper-box-text' markdown="1">

[**Spatial Intelligence in Vision-Language Models: A Comprehensive Survey**](https://www.techrxiv.org/users/992599/articles/1354538/master/file/data/Spatial_VLM_Survey_Techrxiv/Spatial_VLM_Survey_Techrxiv.pdf?inline=true#scrollbar=1&toolbar=1&statusbar=1&navpanes=1#)

**Disheng Liu**, Tuo Liang, Zhe Hu, Jierui Peng, Yiren Lu, Yi Xu, Yun Fu, Yu Yin;
[**Website**](https://dishengll.github.io/Awesome-Spatial-VLMs/); [**GitHub**](https://github.com/vulab-AI/Awesome-Spatial-VLMs) 
<img src="https://img.shields.io/github/stars/vulab-AI/Awesome-Spatial-VLMs" align="absmiddle">

- Vision-Language Models (VLMs) have achieved great success but still lack spatial intelligence, and this survey provides the first unified overview of recent advances, taxonomies, and evaluations toward building spatially intelligent AI.
</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">2025.06</div><img src='/images/Project/Synthetic.png' alt="sym" width="90%"></div></div>
<div class='paper-box-text' markdown="1">

[**Balancing Fidelity and Diversity: Synthetic data could stand on the shoulder of the real in visual recognition**](https://openreview.net/pdf?id=6r0VuH8gGT)

**Disheng Liu**, Tuo Liang, Yu Yin; [**Github**](https://github.com/DishengLL/BALANCING-FIDELITY-AND-DIVERSITY)  
- With the rapid progress of generative models, synthetic data has become a common solution to data scarcity in AI. However, is using it directly without curation ideal for visual recognition? We systematically study how data fidelity and diversity affect recognition performance and show that balancing these factors significantly improves results through a training-free curation pipeline.

</div>
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">2025.03</div><img src='/images/Project/Causal3D.png' alt="sym" width="90%"></div></div>
<div class='paper-box-text' markdown="1">

[**CAUSAL3D: A Comprehensive Benchmark for Causal Learning from Visual Data**](https://arxiv.org/pdf/2503.04852)

**Disheng Liu\***, Yiran Qiao\*, Wuche Liu, Yiren Lu, Yunlai Zhou, Tuo Liang, Yu Yin, Jing Ma; \*Equal contribution;  [**Datasets**](https://huggingface.co/datasets/LLDDSS/Causal3D_Dataset) 
- True intelligence relies on understanding hidden causal relations, yet current AI and vision models lack benchmarks to assess this ability. We introduce Causal3D, a comprehensive 19-dataset benchmark linking structured and visual data to evaluate causal reasoning, revealing that performance drops sharply as causal complexity increases.
</div>
</div>

<!-- - [Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare aliquet ipsum, ac tempus justo dapibus sit amet](https://github.com), A, B, C, **CVPR 2020** -->

<!-- # 🎖 Honors and Awards
- *2021.10* Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare aliquet ipsum, ac tempus justo dapibus sit amet. 
- *2021.09* Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare aliquet ipsum, ac tempus justo dapibus sit amet.  -->

<!-- # 🏫 Educations
- *2024.08 - now*, . 
- *2020.08 - 2022.06*,. 
- *2015.09 - 2019.06*,.  -->

<!-- # 💬 Invited Talks
- *2021.06*, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare aliquet ipsum, ac tempus justo dapibus sit amet. 
- *2021.03*, Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ornare aliquet ipsum, ac tempus justo dapibus sit amet.  \| [\[video\]](https://github.com/) -->

# 💻 Working Experience
<!-- - *2019.05 - 2020.02*, [Lorem](https://github.com/), China. -->
- 2023.07 - 2024.08, Research Intern, [ShanghaiTech IDEA Lab](https://idea.bme.shanghaitech.edu.cn/), Shanghai, China.
- 2022.07 - 2023.07, Algorithm Engineer, [Yinwang Intelligent Technology](https://www.yinwang.com/cn/), Shanghai, China.


# 📝 Servicing 
Reviewer for

ICLR'26, CVPR'26, NeurIPS'26, ACL

Invited Talk

- Dec. 30, 2025, “Spatial Intelligence in Vision-Language Models: What It Is, What Works, and What’s Next,” ENCODE Lab Lecture Series, Westlake University.

# 🎓 Teaching
Teaching Assistant

•	Fall 2025 — CSDS 465: Computer Vision (Instructor: Yu Yin)

•	Spring 2025 — CSDS 425: Computer Networks (Instructor: An Wang)

•	Fall 2024 — CSDS 425: Computer Networks (Instructor: Mark Allman)

# 📄 Papers

- **2026** — [Structured 3D Latents Are Surprisingly Powerful: Unleashing Generalizable Style with 2D Diffusion](https://arxiv.org/abs/2605.04412)
- **2026** — [GSMem: 3D Gaussian Splatting as Persistent Spatial Memory for Zero-Shot Embodied Exploration and Reasoning](https://arxiv.org/abs/2603.19137)
- **2026** — [When 'YES' Meets 'BUT': Can Large Models Comprehend Contradictory Humor Through Comparative Reasoning?](https://arxiv.org/abs/2503.23137), *IEEE TPAMI*
- **2025** — [Spatial Intelligence in Vision-Language Models: A Comprehensive Survey](https://doi.org/10.36227/techrxiv.176231405.57942913/v2)
- **2025** — [Counterfactual Visual Explanation via Causally-Guided Adversarial Steering](https://arxiv.org/abs/2507.09881)
- **2025** — [BARD-GS: Blur-Aware Reconstruction of Dynamic Scenes via Gaussian Splatting](https://arxiv.org/abs/2503.15835), *CVPR 2025*
- **2025** — [CAUSAL3D: A Comprehensive Benchmark for Causal Learning from Visual Data](https://arxiv.org/abs/2503.04852)
- **2025** — [CLIP in Medical Imaging: A Comprehensive Survey](https://doi.org/10.1016/j.media.2025.103551), *Medical Image Analysis*
- **2023** — [Prediction of COVID-19 Patients' Emergency Room Revisit Using Multi-Source Transfer Learning](https://arxiv.org/abs/2306.17257)

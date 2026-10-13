# Three-dimensional forward simulation of geoelectric field leakage in thick landfills

厚堆体填埋场渗漏地电场三维正演模拟 —— 论文配套材料

This repository contains the manuscript and supporting materials (numerical simulation data, figures, and plotting scripts) for the paper **"Three-dimensional forward simulation of geoelectric field leakage in thick landfills"**.

## Repository contents / 仓库内容

| Directory | Description |
|---|---|
| `Fu_Yan_Manuscript_Final.doc` | Manuscript final version / 论文终稿 |
| `comsol_model_figures/` | Figures exported from COMSOL models / COMSOL 模型导出图件 |
| `surfer_model_figures/` | Surfer 3D model figures (`.srf`, `.png`) / Surfer 三维模型图 |
| `cross_section_through_electrode_and_aperture/` | Cross-section data through electrode and aperture / 过电极与破损孔断面数据 |
| `paper_original_figures_without_electrode/` | Original paper figures without electrode, grouped by scenario / 论文原始图件(无电极),按工况分组 |

## Scenario groups / 工况分组

Under `paper_original_figures_without_electrode/`, each factor contains multiple scenarios:

- `aperture_size/` — 防渗膜破损孔径 (0.05–0.4 m)
- `bedrock_conductivity/` — 基岩电导率 (500–4000)
- `electrode_burial_depth/` — 电极埋深 (0.5–12 m)
- `electrode_position/` — 电极位置
- `inter_aperture_distance/` — 破损孔间距 (0–13 m)
- `landfill_geometry/` — 填埋堆体几何形态 (cone / square / trapezoidal / truncated cone)
- `leachate_layer_thickness/` — 渗滤液层厚度 (0.5–4 m)
- `number_of_apertures/` — 破损孔数量 (1–4)
- `waste_fill_thickness/` — 堆体填埋厚度 (10–80 m)
- `cross_section/`、`plan_view/`、`volume_potential/` — 断面 / 平面 / 体电位响应

Each scenario folder typically contains:

- `data.txt` — COMSOL 导出的电场数据(含模型信息头)
- `test.m` — MATLAB 绘图脚本,读取 `data.txt` 生成论文图件
- `*.lpk` — ArcGIS 图层文件;`*.srf` — Surfer 文件;`*.vtu` — ParaView 网格数据

## Reproduction / 复现说明

Each scenario is self-contained: run the `test.m` script in MATLAB within the scenario folder (with `data.txt` present) to regenerate the corresponding figure.

各工况目录自包含:在 MATLAB 中于该目录下直接运行 `test.m` 即可复现对应图件。

## Environment / 环境

- COMSOL Multiphysics 6.1 (forward simulation)
- MATLAB (figure generation)
- ArcGIS (`.lpk`), Surfer (`.srf`), ParaView (`.vtu`)

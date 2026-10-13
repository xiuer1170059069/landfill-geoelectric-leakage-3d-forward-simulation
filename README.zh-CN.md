中文 | [English](README.md)

# 厚堆体填埋场渗漏地电场三维正演模拟

Three-dimensional forward simulation of geoelectric field leakage in thick landfills

本仓库为论文《厚堆体填埋场渗漏地电场三维正演模拟》的配套材料,包含论文终稿、数值模拟数据、图件与绘图脚本。

## 仓库内容

| 目录 | 说明 |
|---|---|
| `Fu_Yan_Manuscript_Final.doc` | 论文终稿 |
| `comsol_model_figures/` | COMSOL 模型导出图件 |
| `surfer_model_figures/` | Surfer 三维模型图(`.srf`、`.png`) |
| `cross_section_through_electrode_and_aperture/` | 过电极与破损孔的断面数据 |
| `paper_original_figures_without_electrode/` | 论文原始图件(无电极),按工况分组 |

## 工况分组

`paper_original_figures_without_electrode/` 下每种影响因素包含多组工况:

- `aperture_size/` — HDPE 防渗膜破损孔径(0.05–0.4 m)
- `bedrock_conductivity/` — 基岩电导率(500–4000)
- `electrode_burial_depth/` — 电极埋深(0.5–12 m)
- `electrode_position/` — 电极位置
- `inter_aperture_distance/` — 破损孔间距(0–13 m)
- `landfill_geometry/` — 填埋堆体几何形态(cone 圆锥 / square 方形 / trapezoidal 梯形 / truncated cone 截锥)
- `leachate_layer_thickness/` — 渗滤液层厚度(0.5–4 m)
- `number_of_apertures/` — 破损孔数量(1–4)
- `waste_fill_thickness/` — 堆体填埋厚度(10–80 m)
- `cross_section/`、`plan_view/`、`volume_potential/` — 断面 / 平面 / 体电位响应

每个工况目录通常包含:

- `data.txt` — COMSOL 导出的电场数据(含模型信息头)
- `test.m` — MATLAB 绘图脚本,读取 `data.txt` 生成论文图件
- `*.lpk` — ArcGIS 图层文件;`*.srf` — Surfer 文件;`*.vtu` — ParaView 网格数据

## 复现说明

各工况目录自包含:在 MATLAB 中于该目录下直接运行 `test.m` 脚本(确保 `data.txt` 在同目录)即可复现对应图件。

## 环境

- COMSOL Multiphysics 6.1(正演模拟)
- MATLAB(图件生成)
- ArcGIS(`.lpk`)、Surfer(`.srf`)、ParaView(`.vtu`)

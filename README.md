[中文](README.zh-CN.md) | English

# Three-dimensional forward simulation of geoelectric field leakage in thick landfills

This repository contains the manuscript and supporting materials (numerical simulation data, figures, and plotting scripts) for the paper **"Three-dimensional forward simulation of geoelectric field leakage in thick landfills"**.

## Repository contents

| Directory | Description |
|---|---|
| `Fu_Yan_Manuscript_Final.doc` | Manuscript final version |
| `comsol_model_figures/` | Figures exported from COMSOL models |
| `surfer_model_figures/` | Surfer 3D model figures (`.srf`, `.png`) |
| `cross_section_through_electrode_and_aperture/` | Cross-section data through electrode and aperture |
| `paper_original_figures_without_electrode/` | Original paper figures without electrode, grouped by scenario |

## Scenario groups

Under `paper_original_figures_without_electrode/`, each factor contains multiple scenarios:

- `aperture_size/` — HDPE geomembrane aperture size (0.05–0.4 m)
- `bedrock_conductivity/` — bedrock conductivity (500–4000)
- `electrode_burial_depth/` — electrode burial depth (0.5–12 m)
- `electrode_position/` — electrode position
- `inter_aperture_distance/` — inter-aperture distance (0–13 m)
- `landfill_geometry/` — landfill geometry (cone / square / trapezoidal / truncated cone)
- `leachate_layer_thickness/` — leachate layer thickness (0.5–4 m)
- `number_of_apertures/` — number of apertures (1–4)
- `waste_fill_thickness/` — waste fill thickness (10–80 m)
- `cross_section/`, `plan_view/`, `volume_potential/` — cross-section / plan-view / volume potential response

Each scenario folder typically contains:

- `data.txt` — electric field data exported from COMSOL (with model header)
- `test.m` — MATLAB plotting script that reads `data.txt` and generates the paper figure
- `*.lpk` — ArcGIS layer files; `*.srf` — Surfer files; `*.vtu` — ParaView grid data

## Reproduction

Each scenario is self-contained: run the `test.m` script in MATLAB within the scenario folder (with `data.txt` present) to regenerate the corresponding figure.

## Environment

- COMSOL Multiphysics 6.1 (forward simulation)
- MATLAB (figure generation)
- ArcGIS (`.lpk`), Surfer (`.srf`), ParaView (`.vtu`)

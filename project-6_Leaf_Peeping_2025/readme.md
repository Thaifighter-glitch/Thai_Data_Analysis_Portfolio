# Colorado Leaf Peeping

This project predicts and visualizes Colorado’s fall foliage progression (“leaf peeping”) in 2025 using aspen distribution and elevation data.  As a first run, it ignores other variables such as latitude or aspect in affecting leaf color 

## Overview
Aspens turn color at different times depending on elevation and location.  
This project explores those patterns with:
- **QGIS maps** – static and animated raster layers by week
- **Tableau dashboard** – interactive version for exploration

## Data & Methods (brief)
- **Inputs:** Aspen distribution (vector), elevation bands (raster/lookup), week index.
- **Approach:** Map week → elevation band; classify with rule-based symbology; export static + animated maps.
- **Assumptions:** 2025 timing driven primarily by elevation; latitude/aspect not modeled in this first pass.

## QGIS Maps
- **Static Map**:  
  ![Static Leaf Peeping Map](leaf_peeping_map.png)

- **Animated Map** (GIF by week):  
  ![Animated Leaf Peeping Map](leaf_peeping_map.gif)

**Key Skills:** Raster band classification, cross-join lookup tables, rule-based symbology, QGIS animation.

---

## Tableau Dashboard
Interactive dashboard for exploring week-by-week aspen foliage coverage.  
🔗 [View on Tableau Public](https://public.tableau.com/app/profile/chris.thai/viz/shared/3WCD23C5R)

**Key Skills:** Data cleaning, calculated fields, interactive filters, joins, page view, alternate visualization.

---

## Tools Used
- **QGIS**: Spatial joins, raster classification, map design
- **Tableau**: Interactive dashboards, calculated fields, joins, public sharing

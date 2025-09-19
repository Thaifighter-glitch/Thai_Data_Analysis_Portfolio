# Colorado Ozone Mapping (QGIS) — 2024

A QGIS cartography mini-project visualizing Colorado ozone levels for 2024.  
Includes printable map layouts, a legend, and an animated GIF.

## ✨ Highlights
- Clean, publication-ready map exports (PNG)
- Legend styled to match EPA AQI categories (Good, Moderate, USG, etc.)
- Optional time-lapse GIF to show changes across scenes/regions

## 🗂 Repo Contents
qgis/ # QGIS project + styles
data/ # small, shareable data only (no large raws)
exports/
maps/ # final PNG maps
legend/ # exported legend PNG
animation/ # timelapse GIF
docs/screenshots/ # QGIS UI screenshots

## 📊 Data
- **Source:** Colorado ozone monitor readings (2024).  
- **Processing:** Cleaned and aggregated in QGIS; binned to AQI-style categories.

## 🗺 Method (QGIS)
1. Load station points / polygons.
2. Style with categorized renderer using ozone/AQI bins.
3. Design Layout(s): title, subtitle, scale bar, north arrow, attribution.
4. Export:
   - **Maps** → `exports/maps/*.png`
   - **Legend** (Layout → Add Item → Legend, or export legend as separate PNG)
   - **Timelapse GIF** from your sequence of map PNGs.

> Note: I removed the layer title (“colorado_ozone_2024trim”) from the legend for a cleaner look and exported a standalone legend image.

## 🎨 Symbology
AQI-style breaks used:
- Good, Moderate, **USG** (Unhealthy for Sensitive Groups), Unhealthy, Very Unhealthy, Hazardous  

## 🔁 Reproduce
- Open `qgis/colorado_ozone_2024.qgz` in QGIS ≥ 3.28.

## 📦 Outputs
- `exports/maps/ozone_2024_statewide.png`
- `exports/maps/ozone_2024_front_range.png`
- `exports/legend/ozone_legend.png`
- `exports/animation/ozone_timelapse.gif`

## 📜 License
- Code/config: MIT
- Maps: CC BY 4.0  

## 🙌 Credits
- Data courtesy of Natural Earth and drcog
- Built with QGIS.

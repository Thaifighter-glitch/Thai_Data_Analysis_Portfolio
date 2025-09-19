# Colorado Ozone Mapping (QGIS, 2024)

Cartographic analysis of ozone levels across Colorado in 2024 using QGIS.  
Includes publication-ready maps, a custom standalone legend, and an animated timelapse GIF.

---

## ✨ Highlights
- Clean, exportable maps styled with **EPA AQI categories**
- Custom legend exported separately for flexible use in reports
- Animated timelapse GIF to visualize ozone distribution across regions
- Reproducible QGIS project file (`.qgz`)

---

## 📊 Data
- **Source:** Colorado Air Pollution Control Division (APCD) ozone monitoring network, 2024  
  _(data available via [EPA AQS DataMart](https://www.epa.gov/aqs))_  
- **Processing:** Cleaned and categorized in QGIS according to AQI thresholds:
  - Good
  - Moderate
  - USG (Unhealthy for Sensitive Groups)
  - Unhealthy
  - Very Unhealthy
  - Hazardous

> Only small/processed data is included in this repo. Raw/full datasets are not committed.

---

## 🗺 Method
1. Imported ozone station data into QGIS.
2. Applied categorized renderer with AQI breakpoints and color scheme.
3. Designed map layouts with:
   - Title, subtitle, scale bar, and north arrow
   - Legend (exported separately for clarity)
   - Attribution text
4. Exported outputs:
   - **Maps** → PNGs
   - **Legend** → PNG
   - **Animation** → GIF from sequential map exports

---

## 📦 Outputs

**Statewide Map**  
![Colorado Ozone Statewide](exports/maps/ozone_2024_statewide.png)

**Front Range Map**  
![Colorado Ozone Front Range](exports/maps/ozone_2024_front_range.png)

**Legend**  
![Ozone Legend](exports/legend/ozone_legend.png)

**Timelapse GIF**  
![Ozone Timelapse](exports/animation/ozone_timelapse.gif)

---

## 🔁 Reproduce
- Open `qgis/colorado_ozone_2024.qgz` in QGIS ≥ 3.28.  
- If layer paths break, reset them: **Right-click layer → Set Data Source → point to local file.**

---

## 📜 License
- Code & configs: MIT  
- Maps & visuals: CC BY 4.0  

---

## 🙌 Credits
- Data courtesy of **Colorado APCD** & **EPA AQS**.  
- Built using **QGIS 3.28**.

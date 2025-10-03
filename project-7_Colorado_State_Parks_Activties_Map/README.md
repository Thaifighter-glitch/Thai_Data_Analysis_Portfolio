# Colorado State Parks Activities Map

## Overview
This project visualizes Colorado State Parks and their available activities using **Tableau** and **GIS data**.  
It allows users to filter by activity type, explore parks interactively, and click directly through to each park’s official CPW webpage.

👉 [View the Interactive Dashboard on Tableau Public](https://public.tableau.com/shared/6T2XNWRG3?:display_count=n&:origin=viz_share_link)

---

## Data Sources
- **Colorado Parks and Wildlife (CPW) GIS Data:** State park boundaries (GeoJSON/Shapefile)
- **Manually Collected CPW Website Data:** Park activity counts and official park website links (CSV)

---

## Methods
1. Filtered the original CPW property shapefile to **state parks only**.
2. Resolved multi-part park entries (e.g., James M. Robb Colorado River State Park) by dissolving geometries.
3. Cleaned and reformatted the activity data in **Google Sheets** (unpivoted wide → long format).
4. Joined park boundaries with the activities dataset in Tableau.
5. Created an interactive **map dashboard** with:
   - Park polygons and pin markers
   - Activity filter dropdown (47 activities)
   - Tooltip with activity count + official park website link

---

## Dashboard Features
- Filter parks by any/all activities  
- Hover tooltips with **park name, activity count, and direct website link**  
- Pins for small parks to improve visibility  
- Clean design with optional filtering for user exploration  

---

## Skills Demonstrated
- GIS (QGIS): shapefile filtering, dissolve operations, GeoJSON export  
- Data Cleaning (Google Sheets): unpivoting, text standardization, joins  
- Tableau: interactive map, tooltips, URL actions, dashboard design  
- Data Visualization: storytelling through maps and filters  

---

## Next Steps
- Expand dataset to include **park visitation or attendance stats**  
- Add additional environmental data (air quality, wildlife habitats)  
- Share with CPW for potential public use

---

## Screenshot
![Dashboard Screenshot](images/dashboard_preview.png)

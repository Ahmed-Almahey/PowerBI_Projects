# ✈️ Airlines Delay Analysis - Power BI Project

This Power BI dashboard analyzes causes of flight delays using real-world airline data. The visualizations provide insights into delay types, patterns by geography and airline, and delay trends over time.

## 📊 Key Features & Work Done

- Built a **star schema** model to organize the data for analytical performance.
- Created a **date dimension** using DAX (`CALENDAR`) to enable time-based analysis.
- Created a **location dimension** to handle both `Origin` and `Dest` codes, with active/inactive relationships.
- Handled a **many-to-many relationship** scenario using proper relationship modeling techniques.
- Built a dedicated **DAX Measures table** for all calculated KPIs, including:
  - Total Delays (by type)
  - Average Arrival Delay
  - Average Departure Delay
  - Total Delays per Flight
  - Delay metrics by distance and by weather
- Included visuals such as:
  - Maps showing delay distribution by location
  - Bar and stacked bar charts by airline and delay type
  - Line charts showing delay trends over time
  - Scatter plots to analyze delay versus flight distance

## 🖼️ Dashboard Preview

### 📍 Delays Dashboard  
![Delays Dashboard](Airlines-Delay-Dashboard/Dashboard%20Screenshot.png)

### 📍 Total & Average Delay  
![Total & Avg Delay](Airlines-Delay-Dashboard/Dashboard2%20Screenshot.png)

## 📥 Download the Power BI File

➡️ [Download Airlines Delay Power BI Report (.pbix)](https://drive.google.com/uc?export=download&id=1vMOnFzAI7YGg3lP7KWUoMgas9McoAGiH)

> ⚠️ You must download and open the `.pbix` file using **Power BI Desktop** to explore the report.

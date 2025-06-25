# 📊 Facebook Insights Dashboard – Power BI Project

This Power BI report uses data retrieved through the **Facebook Graph API** to analyze post activity for a personal or page account. The project focuses on extracting and transforming Facebook posts, modeling them, and visualizing performance metrics with clean, interactive visuals.

## 🧾 Key Steps & Features

- Connected to **Facebook Graph API** using a custom Facebook App.
- Extracted posts data, including message content, links, and hashtags.
- Performed Power Query transformations:
  - Renamed queries and columns
  - Changed data types
  - Parsed and extracted hashtags and URLs
- Added derived columns such as **Post URL**.

## 🧠 DAX Measures & Calculations

- `# Posts`  
- `# Posts Previous Month` – built using a **calculation group**  
- `# Posts Running Total` – built using a **calculation group**

## 📊 Visuals

- KPI card: Total # of Posts  
- Line Chart: Posts by Date  
- Matrix Table: Posts by Month with previous month comparison and running totals  
- Table View: Detailed post data, including clickable post URL icons

## 📱 Mobile Layout

- Mobile-friendly layout created to ensure clean navigation and readability on small screens.

## 🖼️ Dashboard Preview

### 🔍 Facebook Posts Overview  
![Facebook Posts Dashboard](Dashboard%20Screenshot.png)

> ⚠️ The `.pbix` file is **not shared** due to privacy concerns (the data contains real Facebook post details).  
> The screenshot above shows the completed report layout and visuals.


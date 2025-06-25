# PowerBI_Projects
# AdventureWorks Power BI Analytics Project

This project is a comprehensive Power BI data model and dashboard built on Microsoft's **AdventureWorks** dataset. The focus is on dimensional modeling, DAX measure creation, and interactive reporting using advanced Power BI features like bookmarks, drill-through, and Q&A.

## 📁 Data Source

- **AdventureWorks Sample Database**  
  [Official Microsoft Installation Guide](https://docs.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms)

- **Data Connectivity Mode**: Import

- **Custom SQL Views Created**:
  - `vw_DimProducts`
  - `vw_DimSalesPersons`
  - `vw_DimShipMethods`
  - `vw_DimStatuses`
  - `vw_DimTerritories`
  - `vw_FactOrderDetails`

## 🛠 SQL Data Preparation

Custom SQL views were written to prepare and transform raw AdventureWorks tables into analysis-ready dimensional tables following the star schema. Key operations include:

- Joins to normalize product category and subcategory
- Mapping status IDs to descriptive values
- Deriving line-level financial fields: `TaxAmount`, `TotalDue`, `Freight`
- Flattening role-playing dates (Order, Ship, Due)

## 🧠 Power BI Modeling

- **Model Type**: Star Schema
- **Role-Playing Dimensions**: `OrderDate`, `ShipDate`, `DueDate` (using `USERELATIONSHIP`)
- **Hierarchies**:
  - Product Hierarchy: Category → Subcategory → Product
  - Date Hierarchy: Year → Month → Day

### ➕ Calculated Table

- `DimDates` table created in Power BI using DAX with the following columns:
  - Year, Month, Day
  - Month Name, Day Name

## 📊 Measures Created (DAX)

- `# Orders`
- `Total SubTotal`
- `Total Tax`
- `Total Freight`
- `Total Due`
- `Max Qty per Product`

> All measures also added to a DAX table for quick reference and visualization.

## 📈 Visualizations & Interactivity

- **Line Chart** using counts over role-playing dates with `USERELATIONSHIP`
- **Drill Down** on date and product hierarchies
- **Drill Through** to detail pages (e.g., by SalesPerson or Territory)
- **Bookmarks** to toggle between charts (Show/Hide functionality)
- **Matrix Chart**:  
  - Rows: Territories  
  - Columns: Years  
  - Values: Total Sales, Total Canada Sales
- **Q&A Visual**: Natural language querying
- **Slicers** on two pages with sync enabled

## 🎨 Design & Usability

- Clean and professional layout
- Synchronized slicers for consistency
- Intuitive chart titles and tooltip configurations
- Color palette selected for readability and accessibility

## 📚 Skills Demonstrated

- Data Modeling (Star Schema, Hierarchies, Role-playing Dimensions)
- SQL (Joins, Views, Field Calculations)
- DAX (Measures, USERELATIONSHIP, Time Intelligence)
- Power BI (Bookmarks, Drill Through, Sync Slicers, Q&A)
- Interactive Dashboard Design
- Data Visualization Best Practices

---
## 📥 Download

You can download and explore the full Power BI file and SQL scripts here:

➡️ **[Download Power BI Report (lab4.pbix)](https://github.com/Ahmed-Almahey/PowerBI_Projects/blob/main/AdventureWorks-Report/lab4.pbix)**  
➡️ **[Download SQL Transformation Script](https://github.com/Ahmed-Almahey/PowerBI_Projects/blob/main/AdventureWorks-Report/sql-data-transformation.sql)**

> Open the Power BI file in Power BI Desktop to view the full model, measures, relationships, and interactive visuals.

> Open the Power BI file in Power BI Desktop to view the full model, measures, relationships, and interactive visuals.
---

## ✅ Outcome

This project demonstrates a full BI workflow: from raw data transformation using SQL, to semantic modeling and insightful visual storytelling using Power BI. It highlights advanced interactivity and the use of dynamic measures to analyze sales performance across time, location, and product categories.

---

**🔗 GitHub Repository:** _[Insert your GitHub link here]_  
**🧾 Author:** Ahmed al-Mahy  
**📌 Location:** Egypt  

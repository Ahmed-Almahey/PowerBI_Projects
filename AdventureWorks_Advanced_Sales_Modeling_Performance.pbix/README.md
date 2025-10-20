# AdventureWorks — Advanced Sales Modeling & Performance Dashboard (Power BI)

This Power BI project demonstrates advanced **data modeling**, **DAX techniques**, and **interactive analytics** using the **AdventureWorks 2022** sample database.  
It focuses on creating a **star schema model**, applying **USERELATIONSHIP** for multiple date relationships, and building dynamic **sales performance dashboards**.

---

## 📊 Overview

The goal of this project is to analyze sales, orders, and product performance across regions, ship methods, and territories — leveraging **Power BI’s modeling and visualization capabilities**.

To ensure the dashboard is easily viewable and functional for anyone, the file uses **Import Mode** instead of DirectQuery.  
This means you can open it directly without requiring a live SQL Server connection.

---

## 🗂 Data Source

- **Dataset:** [AdventureWorks 2022 Sample Database](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms)
- **Mode:** Import (Originally built with DirectQuery)
- **Schema:** Star Schema
- **Source Tables:**
  - `Sales.SalesOrderHeader`
  - `Sales.SalesOrderDetail`
  - `Sales.vSalesPerson` *(View)*
  - `Sales.SalesTerritory`
  - `Purchasing.ShipMethod`
  - `Production.Product`
  - `Production.ProductSubcategory`
  - `Production.ProductCategory`

---

## 🧩 Data Preparation

- Renamed tables and standardized column names  
- Removed unused columns for cleaner data modeling  
- Merged **Product**, **Subcategory**, and **Category** tables using Power Query (M Language)  
- Created a **Status** table using `ufnGetSalesOrderStatusText` function logic  
- Added a **Dates** table in Power Query  
- Calculated missing fields (e.g., *TotalDue*, *Tax*, *Freight*) using DAX  

---

## 🧠 Data Modeling

- Built a **Star Schema** with clear fact and dimension relationships  
- Created **Product Hierarchy** (Category → Subcategory → Product)  
- Implemented **USERELATIONSHIP** for dynamic time analysis:
  - `OrderDate`
  - `ShipDate`
  - `DueDate`
- Organized all DAX measures into a dedicated **Measures Table**

---

## ⚙️ Key DAX Measures

- `# Orders`
- `Total SubTotal`
- `Total Tax`
- `Total Freight`
- `Total Due`
- `# Quantity`

---

## 📈 Visualizations

- KPI Cards for key metrics (`# Orders`, `Total SubTotal`, `Total Tax`, `Total Freight`, `Total Due`)
- Line chart comparing **OrderDate**, **ShipDate**, and **DueDate**
- Order breakdown by **Status**, **Ship Method**, and **Territory**
- Drill-down hierarchy by **Category → Subcategory → Product**
- **Tooltip pages** and **Drill Through** interactions
- Top 10 **Salespersons** by order volume or amount
- Clean color palette, meaningful chart titles, and intuitive layout

---

## 💡 Features

- Fully interactive and optimized for storytelling  
- Includes drill-through and tooltip pages for better analysis context  
- Demonstrates advanced Power BI modeling and DAX techniques  
- Uses **Import Mode** for easy sharing and offline access  

---

## 🚀 How to Use

1. [Download AdventureWorks 2022 Sample Database](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms)
2. Clone or download this repository.
3. Open the `.pbix` file in **Power BI Desktop**.
4. Explore the data model and dashboards!

---

## 🔗 References

- AdventureWorks Database Documentation:  
  [https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms)

- USERELATIONSHIP Article:  
  [https://radacad.com/userelationship-or-role-playing-dimension-dealing-with-inactive-relationships-in-power-bi](https://radacad.com/userelationship-or-role-playing-dimension-dealing-with-inactive-relationships-in-power-bi)

---

## 🧑‍💻 Author

**Ahmed Almahey**  
📧 [Contact via GitHub Issues](../../issues)

---



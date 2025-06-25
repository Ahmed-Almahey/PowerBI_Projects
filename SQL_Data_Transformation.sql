
create view vw_DimProducts as 
select p.ProductID, p.Name as product, c.name as category, sc.Name as subcategory, p.Color
from Production.product p 
left join Production.ProductSubcategory sc
on  p.ProductSubcategoryID = sc.ProductSubcategoryID
left join Production.ProductCategory c 
on c.ProductCategoryID = sc.ProductCategoryID


create view vw_DimTerritories as 
select TerritoryID, Name as Territory , [Group]
from Sales.SalesTerritory



drop view dbo.Status



create view vw_DimStatuses 
as
select 1 as StatusID,'In process' as [Status] union all
select 2 as StatusID,'Approved' as [Status] union all
select 3 as StatusID,'Backordered' as [Status] union all
select 4 as StatusID,'Rejected' as [Status] union all
select 5 as StatusID,'Shipped' as [Status] union all
select 6 as StatusID,'Cancelled' as [Status] 



create view vw_DimShipMethods 
as
select ShipMethodID , [Name] as ShipMethod
from Purchasing.ShipMethod



create view vw_DimSalesPersons
as 
select BusinessEntityID as SalesPersonID, 
concat(FirstName,' ',MiddleName,' ',LastName) as SalesPerson
from [Sales].[vSalesPerson]


create view vw_FactOrderDetails 
as 
select o.SalesOrderID,SalesOrderDetailID,
od.ProductID, od.OrderQty, od.LineTotal,od.UnitPrice,
cast(o.OrderDate as date) as Order_Date,
cast(o.DueDate as date) as Due_Date,
cast(o.ShipDate as date) as ShipDate,
o.Status as StatusID, o.OnlineOrderFlag, o.CustomerID,
o.SalesPersonID, o.TerritoryID,
o.ShipMethodID,
(cast(od.LineTotal as decimal(18,5))/ o.SubTotal) * o.TaxAmt as TaxAmount,
(cast(od.LineTotal as decimal(18,5))/ o.SubTotal)* o.TotalDue as TotalDue,
(cast(od.LineTotal as decimal(18,5))/ o.SubTotal)* o.Freight as Freight
from sales.SalesOrderDetail od left join
sales.SalesOrderHeader o
on od.SalesOrderID = o.SalesOrderID
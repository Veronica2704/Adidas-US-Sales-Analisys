--LLENADO DE LA TABLA DE HECHOS.

--FACTSALES
--Llenado de la tabla de FactSales.
INSERT INTO FactSales
(RetailerID, ProductID, LocationID, DateID, PricePerUnit,
UnitsSold, TotalSales, OperatingProfit, OperatingMargin,
SalesMethod)
SELECT r.RetailerID, p.ProductID, l.LocationID, d.DateID, 
TRY_CAST(REPLACE(REPLACE(s.Price_per_Unit, '$', ''), ',', '') AS DECIMAL(10,2)),
s.Units_Sold,
TRY_CAST(REPLACE(REPLACE(s.Total_Sales, '$', ''), ',', '') AS DECIMAL(12,2)),
TRY_CAST(REPLACE(REPLACE(s.Operating_Profit, '$', ''), ',', '') AS DECIMAL(12,2)),
TRY_CAST(REPLACE(s.Operating_Margin, '%', '') AS DECIMAL (5,2)),
s.Sales_Method
FROM [Adidas US Sales Datasets Clean] s
JOIN DimRetailer r
ON s.Retailer = r.Retailer
JOIN DimProduct p
ON s.Product = p.Product
JOIN DimLocation l
ON s.Region = l.Region
AND s.State = l.State
AND s.City = l.City
JOIN DimDate d
ON s.Invoice_Date = d.InvoiceDate;

--Verificación de la tabla.
SELECT TOP 10 * FROM FactSales;

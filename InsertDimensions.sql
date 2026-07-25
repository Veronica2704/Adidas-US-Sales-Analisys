--LLENADO DE LAS TABLAS DE DIMENSIONES.

--DIMRETAILER
--Llenado de la tabla DimRetailer.
INSERT INTO DimRetailer (Retailer)
SELECT DISTINCT Retailer FROM [Adidas US Sales Datasets Clean];

--Verificaión de la tabla.
SELECT * FROM DimRetailer;

--DIMPRODUCT
--Llenado de la tabla DimProduct.
INSERT INTO DimProduct (Product)
SELECT DISTINCT Product FROM [Adidas US Sales Datasets Clean];

--Verificación de la tabla.
SELECT * FROM DimProduct;

--DIMLOCATION
--Llenado de la tabla DimLocation.
INSERT INTO DimLocation (Region, State, City)
SELECT DISTINCT Region, State, City
FROM [Adidas US Sales Datasets Clean];

--Verificación de la tabla.
SELECT * FROM DimLocation;

--DIMDATE
--Llenado de la tabla de DimDate.
INSERT INTO DimDate
(InvoiceDate, Year, Quarter, Month, MonthName, Day, DayOfWeek, 
DayName)
SELECT DISTINCT 
Invoice_Date, YEAR(Invoice_Date), DATEPART(QUARTER, Invoice_Date), MONTH(Invoice_Date),
DATENAME(MONTH, Invoice_Date), DAY(Invoice_Date), DATEPART(WEEKDAY, Invoice_Date),
DATENAME(WEEKDAY, Invoice_Date)
FROM [Adidas US Sales Datasets Clean]
ORDER BY Invoice_Date;

--Verificación de la tabla.
SELECT COUNT (*) AS TotalFechas FROM DimDate;
SELECT TOP 10 * FROM DimDate;

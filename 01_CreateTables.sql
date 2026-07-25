--=============================================
--CREACIÓN DE LAS TABLAS DE DIMENSIÓN Y HECHOS
--=============================================

--DIMRETAILER
--Saber cuántos retailers distintos existen.
SELECT DISTINCT Retailer
FROM [Adidas US Sales Datasets Clean];

--Creación de la tabla.
CREATE TABLE DimRetailer(
RetailerID INT IDENTITY(1,1) PRIMARY KEY,
Retailer VARCHAR(100) NOT NULL
);

--DIMPRODUCT
--Primero se verifica cuantos productos diferentes hay.
SELECT DISTINCT Product FROM [Adidas US Sales Datasets Clean];

--Creación de la tabla.
CREATE TABLE DimProduct(
ProductID INT IDENTITY(1,1) PRIMARY KEY,
Product VARCHAR(100) NOT NULL
);

--DIMLOCATION
--Se revisan las distintas ubicaciones.
SELECT DISTINCT Region, City, State
FROM [Adidas US Sales Datasets Clean]
ORDER BY Region, State, City;

--Creación de la tabla.
CREATE TABLE DimLocation(
LocationID INT IDENTITY(1,1) PRIMARY KEY,
Region VARCHAR(50) NOT NULL,
State VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL
);

--DIMDATE
--Para crear la tabla de DimDate hay que revisar como viene la información.
SELECT TOP 10 InvoiceDate FROM [Adidas US Sales Datasets Clean];

--Se revisan las fechas que abarca el dataset.
SELECT 
MIN(Invoice_Date) AS PrimeraFecha,
MAX(Invoice_Date) AS UltimaFecha
FROM [Adidas US Sales Datasets Clean];

--Creación de la tabla.
CREATE TABLE DimDate(
DateID INT IDENTITY(1,1) PRIMARY KEY,
InvoiceDate DATE NOT NULL,
Year INT NOT NULL,
Quarter INT NOT NULL,
Month INT NOT NULL,
MonthName VARCHAR(20) NOT NULL,
Day INT NOT NULL,
DayOfWeek INT NOT NULL,
DayName VARCHAR(20) NOT NULL
);

--FACTSALES
--Creación de la tabla.
CREATE TABLE FactSales(
SaleID INT IDENTITY(1,1) PRIMARY KEY,
RetailerID INT NOT NULL,
DateID INT NOT NULL,
LocationID INT NOT NULL,
ProductID INT NOT NULL,
PricePerUnit DECIMAL(10,2),
UnitsSold INT,
TotalSales DECIMAL(12,2),
OperatingProfit DECIMAL(12,2),
OperatingMargin DECIMAL(5,2),
SalesMethod VARCHAR(50),

FOREIGN KEY (RetailerID) REFERENCES DimRetailer (RetailerID),
FOREIGN KEY (DateID) REFERENCES DimDate(DateID),
FOREIGN KEY (LocationID) REFERENCES DimLocation(LocationID),
FOREIGN KEY (ProductID) REFERENCES DimProduct(ProductID)
);

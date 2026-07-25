--CONSULTAS EN LAS TABLAS CREADAS

--Ver ventas totales.
SELECT 
	SUM(TotalSales) AS TotalVentas,
	SUM(OperatingProfit) AS GananciaTotal
FROM FactSales;


--Ver ventar por retailer
SELECT 
	r.Retailer,
	SUM(f.TotalSales) AS VentasTotales
FROM FactSales f
JOIN DimRetailer r
	ON f.RetailerID = r.RetailerID
GROUP BY r.Retailer
ORDER BY VentasTotales DESC;


--Ver ventas por producto
SELECT
	p.Product,
	SUM(f.TotalSales) AS VentasTotales
FROM FactSales f
JOIN DimProduct p
	ON f.ProductID = p.ProductID
GROUP BY p.Product
ORDER BY VentasTotales DESC;


--Ver ventas por año
SELECT
	d.Year,
	SUM(f.TotalSales) AS VentasTotales
FROM FactSales f
JOIN DimDate d
	ON f.DateID = d.DateID
GROUP BY d.Year
ORDER BY d.Year;


--Número de registros en FactSales
SELECT COUNT(*) AS TotalRegistros
FROM FactSales;


--Verificar valores nulos en llaves foráneas
SELECT * FROM FactSales
WHERE RetailerID IS NULL
	OR ProductID IS NULL
	OR LocationID IS NULL
	OR DateID IS NULL;


--Total de productos
SELECT COUNT(*) AS TotalProductos
FROM DimProduct;


--Total de retailers
SELECT COUNT(*) AS TotalRetailers
FROM DimRetailer;


--Total de ubicaciones
SELECT COUNT(*) AS TotalFechas
FROM DimDate;


--Total de fechas
SELECT COUNT(*) AS TotalFechas
FROM DimDate;

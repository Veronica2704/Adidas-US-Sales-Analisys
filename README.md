# ANÁLISIS DE VENTAS DE ADIDAS EN ESTADOS UNIDOS

## DESCRIPCIÓN
Este proyecto consiste en el desarrollo de una solución completa de Business Intelligence utilizando un conjunto de datos de ventas de Adidas en Estados Unidos. El proyecto abarca todo el flujo de trabajo de un analista de datos, desde la modelación de la base de datos hasta la creación de un dashboard interactivo en Power BI.

--- 
## OBJETIVOS
- Diseñar un modelo estrella para optimizar el análisis de ventas.
- Construir una base de datos relacional en SQL Server.
- Transformar y cargar los datos mediante consultas SQL.
- Crear un dashboard interactivo en Power BI para responder pregunts del negocio.
- Obtener insights sobre el desempeño comercial de Adidas.
  
---
## PREGUNTAS DEL NEGOCIO
- ¿Cuáles son los productos más vendidos y más rentables?
- ¿Qué regiones generan mayores ingresos?
- ¿Cómo evolucionan las ventas en el tiempo?
- ¿Qué retailes tienen mejor desempeño?
- ¿Qué canal de venta es más eficiente?

---
## DATASET
- **Registros:** 9,648
- **Columnas:** 13
- **Fuente:** Kaggle - Adidas US Sales Dataset

---

## HERRAMIENTAS UTILIZADAS
- SQL Server para el modelado de datos y consultas SQL.
- Power BI para la creación del dashboard interactivo.
- Excel para la validación y exploración inicial de los datos.
- GitHub para la documentación del proyecto.

---

## MODELO DE DATOS
Se implementó un **modelo estrella (star schema)** compuesto por una tabla de hechos y cuatro tablas de dimensiones.

## Tabla de hechos

-FactSales

## Tablas de dimensiones

-DimDate
-DimProduct
-DimRetailer
-DimLocation

---

## ESTRUCTURA DEL PROYECTO

```text
Adidas-US-Sales-Analysis/
│
├── data/
├── sql/
├── powerbi/
├── images/
└── README.md
```
---

## DASHBOARD

El dashboard está compuesto por dos páginas:

### Vista general de ventas:

Incluye indicadores clave (KPIs) y visualizaciones para analizar:

   - Ventas totales.
   - Ganancia Total.
   - Unidades Vendidas.
   - Margen Promedio.
   - Ventas por Año.
   - Ventas por Retailer.
   - Ventas por Producto.
   - Ventas por Región.
   - Ventas por Método de Venta.

<img width="1301" height="728" alt="Captura de pantalla 2026-07-23 205849" src="https://github.com/user-attachments/assets/8dd77c9e-5e84-48e2-a273-af76956471bb" />

---

   ### Análisis de ventas:

   Permite profundizar en el comportamiento de las ventas mediante:
   
   - Tendencia Mensual de Ventas.
   - Top 10 Estados por Ventas.
   - Top 5 Productos.
   - Ganancia por Producto.
   - Segmentadores por Año, Región y Tienda.

<img width="1305" height="732" alt="Captura de pantalla 2026-07-23 205904" src="https://github.com/user-attachments/assets/61802db8-f4db-48b8-b7b2-bbe3c0767448" />

---

## Modelo estrella

<img width="1140" height="728" alt="Captura de pantalla 2026-07-25 133158" src="https://github.com/user-attachments/assets/ae1e5030-d631-43fa-9987-033ad1d8be6d" />


## PRINCIPALES HALLAZGOS

- Las ventas aumentaron significativamente de 2020 a 2021.
- West Gear fue el retailer con mayores ventas.
- Men's Street Footwear fue el producto con mayor volumen de ventas y mayor ganancia.
- La región West concentró el mayor volumen de ventas.
- New York fue el estado con mayores ingresos.

---

## RESULTADO

Se desarrolló un dashboard interactivo que permite analizar el comportamiento de las ventas de Adidas en Estados Unidos, identificar tendencias, evaluar el desempeño, de productos, retailers y regiones, y apoyar la toma de decisiones mediante visualizaciones claras e interactivas.

---

## HABILIDADES DEMOSTRADAS

- SQL
- SQL Server
- Modelado Dimensional
- Modelo Estrella (Star Schema)
- ETL
- Power BI
- DAX
- Visualización de Datos
- Análisis de Negocio

---

## AUTOR

**Verónica Sandoval**
- GitHub:
- LinkedIn: 
Un dashboard interactivo que permita entender el comportamiento de las ventas y apoyar decisiones estratégicas.

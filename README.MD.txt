# SQL Data Engineering ETL Project

This is a beginner Data Engineering project using SQL Server.

## Project Architecture
CSV Dataset → Staging Table → Data Cleaning → Analytics Table

## Tools Used
SQL Server
SQL Server Management Studio

## ETL Process
1. Extract data from customers.csv
2. Load into staging table (Customers_csv)
3. Transform data (handle NULL values)
4. Load into analytics table (Customers_Analytics)

## Example Query
SELECT Country, AVG(Score)
FROM Customers_Analytics
GROUP BY Country;
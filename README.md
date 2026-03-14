📌 Project Overview

This project demonstrates a beginner-level Data Engineering ETL pipeline built using Microsoft SQL Server and SQL Server Management Studio.
The objective of this project is to simulate a basic data engineering workflow where raw data from a CSV file is extracted, transformed, and loaded into an analytics-ready table.

🏗 Project Architecture:
CSV Dataset (customers.csv)
        │
        ▼
Staging Table (Customers_csv)
        │
        ▼
Data Cleaning & Transformation
        │
        ▼
Analytics Table (Customers_Analytics)
        │
        ▼
SQL Analysis Queries
⚙️ Tools & Technologies

SQL
Microsoft SQL Server
SQL Server Management Studio
CSV Dataset

🔄 ETL Process
1️⃣ Extract

Data is extracted from the CSV dataset:
customers.csv
The dataset contains customer information such as:
CustomerID	FirstName	LastName	Country	Score
1	Jossef	Goldberg	Germany	350
2	Kevin	Brown	USA	900
3	Mary	NULL	USA	750

2️⃣ Load (Staging Table)

Raw data is loaded into a staging table.

CREATE TABLE Customers_csv (
CustomerID INT,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Country VARCHAR(50),
Score INT
);

3️⃣ Transform (Data Cleaning)

Handling missing values in the dataset.
UPDATE Customers_csv
SET LastName = 'Unknown'
WHERE LastName IS NULL;
UPDATE Customers_csv
SET Score = 0
WHERE Score IS NULL;

4️⃣ Create Analytics Table
CREATE TABLE Customers_Analytics (
CustomerID INT,
FullName VARCHAR(100),
Country VARCHAR(50),
Score INT
);

5️⃣ Load Clean Data into Analytics Table
INSERT INTO Customers_Analytics
SELECT
CustomerID,
FirstName + ' ' + LastName AS FullName,
Country,
Score
FROM Customers_csv;

📈 Example Analysis Queries
Average Score by Country
SELECT Country,
AVG(Score) AS AvgScore
FROM Customers_Analytics
GROUP BY Country;
Total Customers by Country
SELECT Country,
COUNT(*) AS TotalCustomers
FROM Customers_Analytics
GROUP BY Country;

📁 Project Structure
sql-data-engineering-etl-project
│
├── customers.csv
├── project_queries.sql
├── README.md
└── screenshots
    ├── raw_table.png
    ├── cleaned_table.png
    └── analysis_query.png
🎯 Key Learning Outcomes

Understanding ETL pipeline concepts

Data cleaning using SQL

Creating staging and analytics tables

Writing aggregation queries

Building a simple data engineering workflow

🚀 Future Improvements

Automate pipeline using Python

Build real-time pipelines using Apache Kafka

Process big data using Apache Spark

Create dashboards using Power BI

👨‍💻 Author

Gaurav Shinde

Aspiring Data Engineer | SQL | ETL | Data Pipelines

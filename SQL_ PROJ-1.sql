SELECT TOP (1000) [CustomerID]
      ,[FirstName]
      ,[LastName]
      ,[Country]
      ,[Score]
  FROM [myproject1].[dbo].[Customers_csv];
 SELECT *
 FROM Customers_csv
 WHERE LastName IS NULL
 OR SCORE IS NULL;
 UPDATE Customers_csv
 SET LastName= 'UNKNOWN'
 WHERE LASTNAME IS NULL;
 UPDATE Customers_csv
SET Score = 0
  WHERE Score IS NULL;
  SELECT * FROM Customers_csv;
  --AVGRAGE SCORE BY COUNTRY---
  SELECT COUNTRY,
    AVG (SCORE)AS AVGSCORE
    FROM Customers_csv
    GROUP BY Country;
      
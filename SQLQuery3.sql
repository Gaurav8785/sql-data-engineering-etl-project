
  INSERT INTO Customers_Analytics
SELECT 
CustomerID,
FirstName + ' ' + LastName AS FullName,
Country,
Score
FROM Customers_csv;

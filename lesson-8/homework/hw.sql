1-SELECT Category, COUNT(*) AS TotalProducts FROM Products GROUP BY Category;
2-SELECT AVG(Price) AS AvgPrice FROM Products WHERE Category = 'Electronics';
3-SELECT * FROM Customers WHERE City LIKE 'L%';
4-SELECT ProductName FROM Products WHERE ProductName LIKE '%er';
5-SELECT * FROM Customers WHERE Country LIKE '%a';
6-SELECT MAX(Price) AS HighestPrice FROM Products;
7-SELECT ProductName, 
       CASE 
           WHEN StockQuantity < 30 THEN 'Low Stock'
           ELSE 'Sufficient'
       END AS StockStatus
FROM Products;
8-SELECT Country, COUNT(*) AS TotalCustomers FROM Customers GROUP BY Country;
9-SELECT MIN(Quantity) AS MinQuantity, MAX(Quantity) AS MaxQuantity FROM Orders;
10-SELECT DISTINCT o.CustomerID
FROM Orders o
LEFT JOIN Invoices i 
  ON o.CustomerID = i.CustomerID AND i.InvoiceDate BETWEEN '2023-01-01' AND '2023-01-31'
WHERE o.OrderDate BETWEEN '2023-01-01' AND '2023-01-31'
  AND i.CustomerID IS NULL;
11-SELECT ProductName FROM Products
UNION ALL
SELECT ProductName FROM Products_Discounted;
12-SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;
13-SELECT YEAR(OrderDate) AS OrderYear, AVG(TotalAmount) AS AvgOrderAmount 
FROM Orders 
GROUP BY YEAR(OrderDate);
14-SELECT ProductName,
       CASE
           WHEN Price < 100 THEN 'Low'
           WHEN Price BETWEEN 100 AND 500 THEN 'Mid'
           ELSE 'High'
       END AS PriceGroup
FROM Products;
15-SELECT * INTO Population_Each_Year
FROM (
    SELECT district_name, population, year FROM city_population
) AS src
PIVOT (
    SUM(population) FOR year IN ([2012], [2013])
) AS pvt;
16-SELECT ProductID, SUM(SaleAmount) AS TotalSales 
FROM Sales 
GROUP BY ProductID;
17-SELECT ProductName FROM Products WHERE ProductName LIKE '%oo%';
18-SELECT * INTO Population_Each_City
FROM (
    SELECT year, district_name, population FROM city_population
) AS src
PIVOT (
    SUM(population) FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS pvt;
19-SELECT TOP 3 CustomerID, SUM(TotalAmount) AS TotalSpent 
FROM Invoices 
GROUP BY CustomerID 
ORDER BY TotalSpent DESC;
20-SELECT year AS Year, 'Bektemir' AS City, [Bektemir] AS Population FROM Population_Each_City
UNION ALL
SELECT year, 'Chilonzor', [Chilonzor] FROM Population_Each_City
UNION ALL
SELECT year, 'Yakkasaroy', [Yakkasaroy] FROM Population_Each_City;
21-SELECT p.ProductName, COUNT(s.SaleID) AS TimesSold
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
GROUP BY p.ProductName;
22-SELECT '2012' AS Year, district_name, [2012] AS Population FROM Population_Each_Year
UNION ALL
SELECT '2013', district_name, [2013] FROM Population_Each_Year;

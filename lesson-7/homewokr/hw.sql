-- 1
SELECT MIN(Price) AS MinPrice FROM Products;

-- 2
SELECT MAX(Salary) AS MaxSalary FROM Employees;

-- 3
SELECT COUNT(*) AS TotalCustomers FROM Customers;

-- 4
SELECT COUNT(DISTINCT Category) AS UniqueCategories FROM Products;

-- 5
SELECT SUM(SaleAmount) AS TotalSalesForProduct7 FROM Sales WHERE ProductID = 7;

-- 6
SELECT AVG(Age) AS AverageAge FROM Employees;

-- 7
SELECT DepartmentName, COUNT(*) AS EmployeeCount FROM Employees GROUP BY DepartmentName;

-- 8
SELECT Category, MIN(Price) AS MinPrice, MAX(Price) AS MaxPrice FROM Products GROUP BY Category;

-- 9
SELECT CustomerID, SUM(SaleAmount) AS TotalSales FROM Sales GROUP BY CustomerID;

-- 10
SELECT DepartmentName FROM Employees GROUP BY DepartmentName HAVING COUNT(*) > 5;

- 11
SELECT p.Category, SUM(s.SaleAmount) AS TotalSales, AVG(s.SaleAmount) AS AvgSales
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.Category;

-- 12
SELECT COUNT(*) AS HRCount FROM Employees WHERE DepartmentName = 'HR';

-- 13
SELECT DepartmentName, MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary FROM Employees GROUP BY DepartmentName;

-- 14
SELECT DepartmentName, AVG(Salary) AS AvgSalary FROM Employees GROUP BY DepartmentName;

-- 15
SELECT DepartmentName, AVG(Salary) AS AvgSalary, COUNT(*) AS EmployeeCount FROM Employees GROUP BY DepartmentName;

-- 16
SELECT Category FROM Products GROUP BY Category HAVING AVG(Price) > 400;

-- 17
SELECT YEAR(OrderDate) AS SalesYear, SUM(TotalAmount) AS TotalSales FROM Orders GROUP BY YEAR(OrderDate);

-- 18
SELECT CustomerID FROM Orders GROUP BY CustomerID HAVING COUNT(*) >= 3;

-- 19
SELECT DepartmentName FROM Employees GROUP BY DepartmentName HAVING AVG(Salary) > 60000;

-- 20
SELECT Category, AVG(Price) AS AvgPrice FROM Products GROUP BY Category HAVING AVG(Price) > 150;

-- 21
SELECT CustomerID, SUM(SaleAmount) AS TotalSales FROM Sales GROUP BY CustomerID HAVING SUM(SaleAmount) > 1500;

-- 22
SELECT DepartmentName, SUM(Salary) AS TotalSalary, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DepartmentName
HAVING AVG(Salary) > 65000;

-- 23
SELECT o.CustomerID,
       SUM(CASE WHEN o.TotalAmount > 50 THEN o.TotalAmount ELSE 0 END) AS TotalHeavyOrders,
       MIN(o.TotalAmount) AS LeastPurchase
FROM Orders o
GROUP BY o.CustomerID;

-- 24
SELECT YEAR(OrderDate) AS OrderYear,
       MONTH(OrderDate) AS OrderMonth,
       SUM(TotalAmount) AS TotalSales,
       COUNT(DISTINCT ProductID) AS UniqueProducts
FROM Orders
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
HAVING COUNT(DISTINCT ProductID) >= 2;

-- 25
SELECT YEAR(OrderDate) AS OrderYear,
       MIN(Quantity) AS MinQty,
       MAX(Quantity) AS MaxQty
FROM Orders
GROUP BY YEAR(OrderDate);

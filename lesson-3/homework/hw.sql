1-BULK INSERT in SQL Server is a command used to quickly load large amounts of data from a file (like CSV) into a database table wiht other wordsImprove performance when importing data compared to regular INSERT statements.
2-CSV (Comma-Separated Values)
TXT (Plain Text)
XML (eXtensible Markup Language)
JSON (JavaScript Object Notation)
3-CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
  4-INSERT INTO Products (ProductID, ProductName, Price)
VALUES
(1, 'Laptop', 999.99),
(2, 'Mouse', 25.50),
(3, 'Keyboard', 45.00);
5-NULL means no value or unknown value in a database column.
NOT NULL means the column must have a value — it cannot be empty.
  ProductName VARCHAR(50) NOT NULL  -- value is required  
Description TEXT NULL             -- value is optional
6-ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);
7--- Insert a new product into the Products table
INSERT INTO Products (ProductID, ProductName, Price)
VALUES (4, 'Monitor', 150.00);
8-ALTER TABLE Products
ADD CategoryID INT;
9-CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE
);
10-ChatGPT сказал:
The IDENTITY column in SQL Server is used to automatically generate unique numbers for each new row.
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    UserName VARCHAR(50)
);
IDENTITY(1,1) means:
Start at 1
Increase by 1 for each new row
So you don’t need to manually insert values into UserID
11-BULK INSERT Products
FROM 'C:\data\products.txt'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
12-ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);
13-PRIMARY KEY = main unique identifier, no NULLs.
UNIQUE KEY = enforces uniqueness, but allows NULLs.
  14-ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive
CHECK (Price > 0);
15-ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0;
16-SELECT ProductID, ProductName, ISNULL(Price, 0) AS Price
FROM Products;
17-A FOREIGN KEY is used to enforce a link between two tables, ensuring referential integrity. It makes sure that a value in one table (child) must match a value in another table (parent).
Usage:
Ensures that related data stays consistent.
Prevents inserting a value in the child table that doesn’t exist in the parent table.
Optional: Can restrict or cascade updates/deletes.
  18-CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Age INT,
    CONSTRAINT CHK_Age_Adult CHECK (Age >= 18)
);
19-CREATE TABLE Orders (
    OrderID INT IDENTITY(100, 10) PRIMARY KEY,
    OrderDate DATE,
    CustomerName VARCHAR(50)
);
20CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);
21-ISNULL:
The ISNULL function is used to replace a NULL value with a specific value. It takes two arguments: the value to check, and the value to return if the first one is NULL.
  The COALESCE function returns the first non-NULL value from a list of values. It can take two or more arguments.
  Key difference:
Use ISNULL when you only need to check one value and replace it if it's NULL.
Use COALESCE when you want to check multiple values and return the first one that is not NULL.
  22-CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100) UNIQUE
);
  23-ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID)
ON DELETE CASCADE
ON UPDATE CASCADE;

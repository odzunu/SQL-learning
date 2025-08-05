1-create table Employees (EmpID int, Name varchar (50), Salary Decimal (10,2));
2-insert into Employees
values (1, 'Anvar', 1500000)
       (2, 'Dilshod', 200000)
      (3, 'Dilnoza', 300000);
3-update Employees
set salary = 7000
where EmpID = 1;
4-DELETE FROM Employees
WHERE EmpID = 2;
5-DELETE
Removes specific rows (with WHERE condition).
Table and structure stay.
Can be undone with ROLLBACK.
 sample; DELETE FROM Employees WHERE EmpID = 2;
TRUNCATE
Removes all rows from the table (no WHERE).
Table stays, but data is gone.
Faster than DELETE.
Cannot be rolled back in most cases.
sampe; TRUNCATE TABLE Employees;
DROP
Deletes the entire table (structure + data).
Cannot be recovered unless backed up.
sample; DROP TABLE Employees;

DELETE = removes some rows
TRUNCATE = removes all rows
DROP = removes the whole table
6-alter table employees
alter column name varchar (100);
7-alter table employees
add department varchar (50);
8-alter table employees
alter column salary FLOAT;
9-create table department (departmentID int primary key, departmentname varchar (50));
10-truncate table employees;
11-insert into department
values (007, 'kgb'),
		(008, 'nkvd'),
		(009, 'cia')
    (010, 'fbi')
    (011, 'fsb');
12-update Employees
set department = 'Management'
where salary > 5000;
13-delete from employees;
14-alter table employees
drop column department
15-exec sp_rename 'employees', 'StaffMembers';
16-drop table department;
17-create table Products (ProductID int primary key, ProductName varchar (50), Category varchar (50), Price decimal (10,2));
18-alter table products
add constraint ChK_products_price_positive
check (price >0);
19-alter table products
add StockQuantity int default 50;
20-exec sp_rename 'products.category', 'productcategory', 'column';
21-insert into Products
values (1, 'tomato', 'vegetables', 10000, 50),
(2, 'potatoe', 'vegetables', 15000, 50),
(3, 'cucumber', 'vegetables', 5000, 50),
(4, 'eggplant', 'vegetables', 7000, 50),
(5, 'onion', 'vegetables', 4000, 50);
22-select  * into products_backup
from Products;
23-exec sp_rename 'products', 'Inventory'
24-ALTER TABLE Inventory
DROP CONSTRAINT CHK_products_price_positive;
ALTER TABLE Inventory
ALTER COLUMN Price FLOAT;
ALTER TABLE Inventory
ADD CONSTRAINT CHK_products_price_positive
CHECK (Price > 0);
25-alter table inventory
add productcode int identity (1000, 5) not null;

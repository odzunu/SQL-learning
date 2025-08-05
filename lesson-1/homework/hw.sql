1- data - is a collection of rows filled with numbers or  words  that can be processed to derive meaningful information.
 database - is a storage where all the data holds
 relational database - is a relational database is a type of database that organizes data into rows and columns, which collectively form a table where the data points are related to each other
 table - is an arrangement of information or data, typically in rows and columns, or possibly in a more complex structure
2- High Availability and Disaster Recovery, Advanced Security, Scalability and Performance, Business Intelligence and Analytics, Data Management and Tools.
3- Windows Authentication Mode, Mixed Mode (SQL Server and Windows Authentication Mode)
4- Create DATABASE SchoolDB
5-create table Students (StudentID int PRIMARY KEY, Name VARCHAR(50), Age INT)
6-SQL Server is the engine that stores and manages  data. SSMS (SQL Server Management Studio) is a tool/interface  using to work with SQL Server. SQL is a language  using to talk to the database (to add, get, or change data).
SQL is the language → used in SSMS → to control SQL Server
7-DQL- data query language used to get data from database, example; SELECT * FROM Students;
DML - data manupulation language used to add, change or delete data but not whole table, example; INSERT INTO Students VALUES (1, 'Ali', 20);  
UPDATE Students SET Age = 21 WHERE StudentID = 1;  
DELETE FROM Students WHERE StudentID = 2;
DDL- data definition language used to create or change data structure, example; CREATE TABLE Students (...);  
ALTER TABLE Students ADD Email VARCHAR(50);  
DROP TABLE Students;
DCL- data control language used to give or take access or permission, example; GRANT SELECT ON Students TO user1;  
REVOKE SELECT ON Students FROM user1;
TCL- transaction control language used to control groups of actions (transactions), example; BEGIN TRANSACTION;  
UPDATE Students SET Age = 25 WHERE StudentID = 3;  
COMMIT;
8-insert into Students (studentID, Name, Age)
values (1, 'Shahlo', 24),
(2, 'Anvar', 22),
(3, 'Nodir', 29);
9-here is the step by step guidence-->1.download the file-->2. Launch the SSMS-->3.find Object Explorer window then databases folder and then click on it-->4.Select the "Restore Database..." option-->5.in opened window choose "Device" option and click the three-dot button-->6.Click the "Add" button and locate the AdventureWorksDW2022.bak file on computer-->7.Select the AdventureWorksDW2022.bak file and click "OK" to confirm-->8.Click "OK" again to start the restore process.

--BASIC LEVEL

CREATE TABLE Employees (EmployeesID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2));
	select*from Employees

	INSERT INTO Employees (EmployeesID, Name, Salary)
VALUES (1, 'Alice', 5000.00);

Single-row insert 
INSERT INTO Employees VALUES (2, 'Bob', 6000.00);

Multiple-row insert

INSERT INTO Employees (EmployeesID, Name, Salary)
VALUES 
    (3, 'Charlie', 5500.00),
    (4, 'Diana', 5200.00);

UPDATE Employees
SET Salary = 7000
WHERE EmployeesID = 1;

DELETE FROM Employees
WHERE EmployeesID = 2;

select*from Employees

DELETE	
Deletes specific rows based on condition	

TRUNCATE	
Removes all rows	

DROP	
Deletes the entire table	


ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);


ALTER TABLE Employees
ADD Department VARCHAR(50);

ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;

CREATE TABLE Departments (DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50));

	TRUNCATE TABLE Employees;

select*from Employees

--Intermediate-Level Tasks

1.  CREATE TABLE Departments (DepartmentID INT,
    DepartmentName VARCHAR(50));

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (1, 'HR'),
       (2, 'Finance'),
       (3, 'IT'),
       (4, 'Marketing'),
       (5, 'Sales');

INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT DepartmentID, DepartmentName FROM Departments;

DROP TABLE Departments;

2.  
UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;

DELETE FROM Employees;

ALTER TABLE Employees
DROP COLUMN Department;

EXEC sp_rename 'Employees', 'StaffMembers';


USE SchoolDB;
GO
DROP TABLE Departments;


select*from Employees

select*from Departments 

--Advanced-Level Tasks

CREATE TABLE Products (ProductID INT PRIMARY KEY,
ProductName VARCHAR(100),
Category VARCHAR(50),
Price DECIMAL(10, 2) CHECK (Price > 0),
Description VARCHAR(255));
	
ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;

EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description)
VALUES 
(1, 'Laptop', 'Electronics', 1200.00, 'High performance laptop'),
(2, 'Desk Chair', 'Furniture', 150.00, 'Ergonomic office chair'),
(3, 'Water Bottle', 'Accessories', 20.00, 'Reusable stainless steel bottle'),
(4, 'Notebook', 'Stationery', 5.00, 'A5 lined notebook'),
(5, 'Headphones', 'Electronics', 85.50, 'Noise-cancelling headphones');
	

SELECT * INTO Products_Backup
FROM Products;

select*from Products

EXEC sp_rename 'Products', 'Inventory';

ALTER TABLE Inventory
ALTER COLUMN Price FLOAT;

	select*from Inventory

CREATE TABLE Inventory_New (ProductCode INT IDENTITY(1000, 5) PRIMARY KEY,
ProductID INT,
ProductName VARCHAR(100),
ProductCategory VARCHAR(50),
Price FLOAT,
Description VARCHAR(255),
StockQuantity INT);

INSERT INTO Inventory_New (ProductID, ProductName, ProductCategory, Price, Description, StockQuantity)
SELECT ProductID, ProductName, ProductCategory, Price, Description, StockQuantity
FROM Inventory;

select*from Inventory_New

DROP TABLE Inventory;

select*from Inventory

select*from Inventory_New

EXEC sp_rename 'Inventory_New', 'Inventory';

select*from Inventory

-- Easy-Level Tasks 
1. BULK INSERT is a SQL Server command used to import a large amount of data from a file into a database table quickly and efficiently.
Purpose:

To load large datasets (like .csv, .txt) into SQL Server.

Faster than inserting records one-by-one.

-- syntax example:
BULK INSERT Products
FROM 'C:\data\products.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2);

2. List four file formats that can be imported into SQL Server
CSV (.csv)

TXT (.txt)

XML (.xml)

JSON (.json)


3. CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2));
	

4. INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1, 'Laptop', 1200.00),
(2, 'Headphones', 150.50),
(3, 'Mouse', 25.99);


5. Explain the difference between NULL and NOT NULL
NULL: Represents missing or unknown data in a column. It is not equal to 0 or an empty string.

NOT NULL: Specifies that a column must contain a value—no missing entries allowed.

6. ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);

7. SELECT * FROM Products
WHERE Price > 100;

8. ALTER TABLE Products
ADD CategoryID INT;

9. CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE);

10. The IDENTITY property in SQL Server is used to automatically generate unique numeric values for a column, 
typically for primary keys.

Purpose:
Auto-increments values without manual input.
Syntax: IDENTITY(seed, increment)

Example 
CREATE TABLE Orders (OrderID INT IDENTITY(1,1) PRIMARY KEY, 
OrderDate DATE);

-- Medium-Level Tasks
1. BULK INSERT Products
FROM 'C:\Users\olimj\Downloads\Telegram Desktop\emails.txt'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2);


2.	ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);

3. --PRIMARY KEY Uniquely identifies each row
   --UNIQUE KEY Ensures values in a column are unique

4. ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive CHECK (Price > 0);

5. ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0;

6. SELECT ProductID, ProductName, ISNULL(Price, 0) AS Price
FROM Products;

7. CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);
8. CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID));

-- Hard-Level tasks

1. CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT CHECK (Age >= 18));

2. CREATE TABLE Products (
    ProductID INT IDENTITY(100,10) PRIMARY KEY,
    ProductName VARCHAR(100));

3. CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID));

4. Both functions are used to handle NULL values by replacing them with something else, 
but they behave slightly differently.

ISNULL(expression, replacement)
Returns the replacement if expression is NULL.

Only works with two arguments.

SELECT ISNULL(NULL, 'No Value')
SELECT ISNULL('Hello', 'No Value')

COALESCE(expr1, expr2, ..., exprN)
Returns the first non-NULL value from the list of arguments.

Can take multiple arguments.

ANSI standard, supported across different SQL databases.

SELECT COALESCE(NULL, NULL, 'Value', 'Other')

5. CREATE TABLE Employees (EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Email VARCHAR(100) UNIQUE);

6. CREATE TABLE Departments (DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100));

CREATE TABLE Employees (EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
    REFERENCES Departments(DepartmentID)
    ON DELETE CASCADE ON UPDATE CASCADE);

-- Explanation of CASCADE options:
ON DELETE CASCADE: If a department is deleted from the Departments table, 
all employees in that department will also be deleted from the Employees table.

ON UPDATE CASCADE: If the department ID is changed in the Departments table, 
it will automatically update in the Employees table.

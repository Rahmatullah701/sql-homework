-- Easy Level
1. SELECT TOP 5 * FROM Employees;
2. SELECT DISTINCT Category FROM Products;
3. SELECT * FROM Products
   WHERE Price > 100;
4. SELECT * FROM Customers
   WHERE FirstName LIKE 'A%';  
5. SELECT * FROM Products
   ORDER BY Price ASC;
6. SELECT * FROM Employees
   WHERE Salary >= 60000 AND Department = 'HR';
7. SELECT EmpID, EmpName, ISNULL(Email, 'noemail@example.com') AS Email
   FROM Employees;
8. SELECT * FROM Products
   WHERE Price BETWEEN 50 AND 100;
9. SELECT DISTINCT Category, ProductName
   FROM Products;
10. SELECT DISTINCT Category, ProductName
    FROM Products
    ORDER BY ProductName DESC;
-- Medium Level

1. SELECT TOP 10 * FROM Products
   ORDER BY Price DESC;

2. SELECT EmpID, COALESCE(FirstName, LastName) 
   AS DisplayName FROM Employees;

3. SELECT DISTINCT Category, 
   Price FROM Products;

4. SELECT * FROM Employees
   WHERE (Age BETWEEN 30 AND 40) OR Department = 'Marketing';

5. SELECT * FROM Employees
   ORDER BY Salary DESC
   OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;

6. SELECT * FROM Products
   WHERE Price <= 1000 AND Stock > 50
   ORDER BY Stock ASC;

7. SELECT * FROM Products
   WHERE ProductName LIKE '%e%';

8. SELECT * FROM Employees
   WHERE Department IN ('HR', 'IT', 'Finance'); 

9. SELECT * FROM Customers
   ORDER BY City ASC, PostalCode DESC;

 -- Hard Level 
 
1. SELECT TOP(5) * FROM Products
    ORDER BY SalesAmount DESC; 

2. SELECT EmpID, 
   FirstName + ' ' + LastName AS FullName, 
   Email FROM Employees;

3. SELECT DISTINCT Category, ProductName, Price 
   FROM Products
   WHERE Price > 50;

4. SELECT * FROM Products
   WHERE Price < (SELECT AVG(Price) * 0.10 FROM Products);   

5. SELECT * FROM Employees
   WHERE Age < 30 AND Department IN ('HR', 'IT');

6. SELECT * FROM Customers
   WHERE Email LIKE '%@gmail.com%';

7. SELECT * FROM Employees
WHERE Salary > ALL (SELECT Salary 
FROM Employees 
WHERE Department = 'Sales');

8. SELECT * FROM Orders
   WHERE OrderDate BETWEEN DATEADD(DAY, -180, GETDATE()) AND GETDATE();

-- GETDATE() returns current date/time in SQL Server
-- DATEADD(DAY, -180, GETDATE()) gives the date 180 days ago

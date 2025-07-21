--easy level
--1
--Show all orders placed after 2022 along with the names of the customers who placed them

select o.orderID, c.Firstname, c.Lastname, orderdate
from Orders O
join Customers C on o.customerid = c.customerid
where year(OrderDate) > 2022
--2
-- Display the names of employees who work in either the Sales or Marketing department.


select  e.Name, DepartmentName
from Employees e
join Departments d on e.DepartmentID = d.DepartmentID
where d.DepartmentName IN ('Sales', 'Marketing')
order by DepartmentName

--3
--Show the highest salary for each department.

select d.DepartmentName, max(e.Salary) as HighestSalary
from Employees e
join Departments d on e.DepartmentID = d.DepartmentID
group by d.DepartmentName;

--4
-- List all customers from the USA who placed orders in the year 2023.

select FirstName, LastName
from Customers Cus
join Orders Ord on cus.CustomerID = ord.CustomerID
where cus.Country = 'USA' and year(OrderDate) = 2023

--5
--Show how many orders each customer has placed.

select c.CustomerID, c.FirstName, c.LastName, count (o.OrderID) as OrderCount
from Customers c
left join Orders o on c.CustomerID = o.CustomerID
group by c.CustomerID, c.FirstName, c.LastName;

--6
--Display the names of products that are supplied by either Gadget Supplies or Clothing Mart.

select ProductName, SupplierName
from Products P
join Suppliers S on p.SupplierID = s.SupplierID
where SupplierName in ('Gadget Supplies', 'Clothing Mart');

--7
--For each customer, show their most recent order. Include customers who haven't placed any orders.

select Cu.CustomerID,
    Cu.FirstName,
    Cu.LastName,
    ords.OrderID,
    ords.OrderDate
from Customers Cu
left join Orders ords on cu.CustomerID = cu.CustomerID
where ords.OrderDate = (
    select max(o2.OrderDate)
    from Orders o2
    where o2.CustomerID = cu.CustomerID
)
   OR ords.OrderID IS NULL;

--medium level
--8
--Show the customers who have placed an order where the total amount is greater than 500.

select * from Customers
select * from Orders

select distinct c.CustomerID, c.FirstName, c.LastName, o.Quantity * o.TotalAmount as OrderTotal
from Customers c
join Orders o on c.CustomerID = o.CustomerID
where o.Quantity * o.TotalAmount > 500;

--9
--List product sales where the sale was made in 2022 or the sale amount exceeded 400.

select  p.ProductName, s.SaleDate, s.SaleAmount
from Products p
join Sales s on p.ProductID = s.ProductID
where year(s.SaleDate) = 2022 OR s.SaleAmount > 400;

--10

select p.ProductName,
    sum (s.SaleAmount) as TotalSalesAmount
from Products p
join Sales s on p.ProductID = s.ProductID
group by p.ProductName;

--11

select e.Name, d.DepartmentName, e.Salary
from Employees e
join Departments d on e.DepartmentID = d.DepartmentID
where d.DepartmentName = 'Human Resources' AND e.Salary > 60000;

--12
select p.ProductName, s.SaleDate, p.StockQuantity
from Products p
join Sales s on p.ProductID = s.ProductID
where year(s.SaleDate) = 2023 AND p.StockQuantity > 100;

--13

select e.Name, d.DepartmentName, e.HireDate
from Employees e
join Departments d on e.DepartmentID = d.DepartmentID
where d.DepartmentName = 'Sales' OR year(e.HireDate) > 2020;


--Hard level
--14

select c.FirstName, C.LastName, o.OrderID, c.Address, o.OrderDate
from Customers c
join Orders o ON c.CustomerID = o.CustomerID
where c.Country = 'USA'
and  c.Address LIKE '[0-9][0-9][0-9][0-9]%';

--15 

SELECT p.ProductName, p.Category, s.SaleAmount
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID
WHERE p.Category < 10 OR s.SaleAmount > 350;

--16

select c.CategoryName, count(p.ProductID) as ProductCount
from Categories c
left join Products p on c.CategoryID = p.Category
group by c.CategoryName;
--17 

select *from Customers
select * from Orders

select FirstName, LastName, City, OrderID, TotalAmount
from Customers C
join orders O on C.CustomerID = o.CustomerID
where City = 'Los angeles' and TotalAmount > 300;

--18 
--19

select e.Name,d.DepartmentName, e.Salary
from Employees e
join Departments d on e.DepartmentID = d.DepartmentID
where  
    d.DepartmentName IN ('Sales', 'Marketing')
    and e.Salary > 60000;

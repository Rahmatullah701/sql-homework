--EASY
1. Data is raw facts, figures, or symbols that describe objects, events, or concepts. 
It has no meaning until it is processed and organized. 
For example, numbers, names, and dates are all data.

2. A database is an organized collection of data that is stored and accessed electronically. 
It allows data to be stored in a structured way so it can be easily retrieved, managed, and updated.

3. A relational database is a type of database that stores data in tables that are related to each other through keys 
(like primary keys and foreign keys). It uses Structured Query Language (SQL) to manage and query the data. 
Examples include SQL Server, MySQL, and Oracle.

4. A table is a structure within a relational database that organizes data into rows and columns. 
Each row represents a single record, and each column represents a field or attribute of that record.

--MEDIUM


CREATE DATABASE SchoolDB;

USE SchoolDB;
CREATE TABLE Students (StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT);


	select*from students

	SQL Server is a Relational Database Management System (RDBMS) developed by Microsoft. 
	It stores, processes, and secures data. 
	It’s the actual database engine.

	SSMS (SQL Server Management Studio) is a graphical user interface (GUI) and IDE provided by Microsoft. 
	It lets you interact with SQL Server easily — you can write SQL queries, 
	create databases, manage users, back up data, and more.

	SQL (Structured Query Language) is the standard language used to query and manipulate relational databases. 
	SQL commands work in many database systems (like SQL Server, MySQL, PostgreSQL). 
	Examples: SELECT, INSERT, UPDATE, DELETE.

	In short:
SQL Server is the database system (the engine).

SSMS is the tool you use to interact with SQL Server.

SQL is the language you write to tell the database what to do.

--HARD

DQL	Data Query Language	Retrieve data from the database.
'SELECT' Used to query and fetch data. 
Example: SELECT * FROM Students;


DML	Data Manipulation Language	Insert, update, delete data.
'INSERT', 'UPDATE', 'DELETE' Changes data inside tables. 
Example: INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Ali', 20);


DDL	Data Definition Language Define & manage database structure	
'CREATE', 'ALTER', 'DROP' Creates/changes table structures. 
Example: CREATE TABLE Students (...);

DCL	Data Control Language Control permissions & access	
'GRANT', 'REVOKE' Manages who can access/modify data. 
Example: GRANT SELECT ON Students TO User1;

TCL	Transaction Control Language Manage transactions	
'COMMIT', 'ROLLBACK', 'SAVEPOINT'	
Controls how transactions are handled to ensure data integrity. 
Example: BEGIN TRANSACTION; INSERT ...; COMMIT;


INSERT INTO Students (StudentID, Name, Age) 
VALUES 
    (1, 'Ali', 20),
    (2, 'Sara', 22),
    (3, 'John', 19);
	
	select*from students

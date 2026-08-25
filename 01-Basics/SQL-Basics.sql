-- =========================================
-- SQL BASICS
-- =========================================


-- =========================================
-- 1. CREATE DATABASE
-- =========================================

-- DEFINITION
-- CREATE DATABASE is used to create a new database
-- in the MySQL server.

-- SYNTAX
-- CREATE DATABASE database_name;

CREATE DATABASE company_db;


-- =========================================
-- 2. USE DATABASE
-- =========================================

-- DEFINITION
-- USE is used to select a database so that
-- we can perform operations on it.

-- SYNTAX
-- USE database_name;

USE company_db;


-- =========================================
-- 3. CREATE TABLE
-- =========================================

-- DEFINITION
-- CREATE TABLE is used to create a new table
-- with columns and their data types.

-- SYNTAX
-- CREATE TABLE table_name (
--     column1 datatype,
--     column2 datatype,
--     column3 datatype
-- );

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50)
);


-- =========================================
-- 4. INSERT DATA
-- =========================================

-- DEFINITION
-- INSERT INTO is used to add new records
-- into a table.

-- SYNTAX
-- INSERT INTO table_name
-- (column1, column2, column3)
-- VALUES
-- (value1, value2, value3);

INSERT INTO Employees
(employee_id, employee_name, age, department, salary, city)
VALUES
(101, 'Anu', 22, 'IT', 35000, 'Bangalore'),
(102, 'Shanu', 25, 'HR', 40000, 'Ballari'),
(103, 'Kavya', 23, 'IT', 45000, 'Bangalore'),
(104, 'Nandan', 28, 'Finance', 50000, 'Mysore'),
(105, 'Rahul', 30, 'IT', 60000, 'Bangalore');


-- =========================================
-- 5. SELECT ALL RECORDS
-- =========================================

-- DEFINITION
-- SELECT is used to retrieve data from a table.
-- * represents all columns.

-- SYNTAX
-- SELECT * FROM table_name;

SELECT * FROM Employees;


-- =========================================
-- 6. SELECT SPECIFIC COLUMNS
-- =========================================

-- DEFINITION
-- SELECT can be used to retrieve only specific
-- columns from a table.

-- SYNTAX
-- SELECT column1, column2
-- FROM table_name;

SELECT employee_name, salary
FROM Employees;


-- =========================================
-- 7. WHERE CONDITION
-- =========================================

-- DEFINITION
-- WHERE is used to filter records based on
-- a specified condition.

-- SYNTAX
-- SELECT columns
-- FROM table_name
-- WHERE condition;

SELECT *
FROM Employees
WHERE department = 'IT';


-- =========================================
-- 8. ORDER BY
-- =========================================

-- DEFINITION
-- ORDER BY is used to sort the result of a query
-- in ascending or descending order.

-- ASC  = Ascending order
-- DESC = Descending order

-- SYNTAX
-- SELECT columns
-- FROM table_name
-- ORDER BY column_name ASC/DESC;

SELECT *
FROM Employees
ORDER BY salary DESC;


-- =========================================
-- 9. DISTINCT
-- =========================================

-- DEFINITION
-- DISTINCT is used to remove duplicate values
-- from the result.

-- SYNTAX
-- SELECT DISTINCT column_name
-- FROM table_name;

SELECT DISTINCT city
FROM Employees;


-- =========================================
-- 10. LIMIT
-- =========================================

-- DEFINITION
-- LIMIT is used to restrict the number of records
-- returned by a query.

-- SYNTAX
-- SELECT columns
-- FROM table_name
-- LIMIT number;

SELECT *
FROM Employees
LIMIT 3;


-- =========================================
-- END OF SQL BASICS
-- =========================================


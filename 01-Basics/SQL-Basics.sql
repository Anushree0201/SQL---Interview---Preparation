-- =========================================
-- SQL BASICS
-- =========================================

-- 1. Create Database
CREATE DATABASE company_db;

-- 2. Select Database
USE company_db;

-- 3. Create Table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50)
);

-- 4. Insert Data
INSERT INTO Employees
(employee_id, employee_name, age, department, salary, city)
VALUES
(101, 'Anu', 22, 'IT', 35000, 'Bangalore'),
(102, 'Shanu', 25, 'HR', 40000, 'Ballari'),
(103, 'Kavya', 23, 'IT', 45000, 'Bangalore'),
(104, 'Nandan', 28, 'Finance', 50000, 'Mysore'),
(105, 'Rahul', 30, 'IT', 60000, 'Bangalore');

-- 5. Display all records
SELECT * FROM Employees;

-- 6. Display specific columns
SELECT employee_name, salary
FROM Employees;

-- 7. WHERE condition
SELECT *
FROM Employees
WHERE department = 'IT';

-- 8. ORDER BY
SELECT *
FROM Employees
ORDER BY salary DESC;

-- 9. DISTINCT
SELECT DISTINCT city
FROM Employees;

-- 10. LIMIT
SELECT *
FROM Employees
LIMIT 3;

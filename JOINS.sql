-- =========================================
-- JOINS
-- =========================================

-- DEFINITION
-- JOIN is used to combine data from two or more
-- tables based on a related column between them.
--
-- Common types of JOIN:
-- INNER JOIN
-- LEFT JOIN
-- RIGHT JOIN
-- FULL JOIN
-- SELF JOIN


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT columns
-- FROM table1
-- JOIN table2
-- ON table1.column = table2.column;


-- =========================================
-- PRACTICE TABLE
-- =========================================

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);


-- INSERT DATA
INSERT INTO Departments
(department_id, department_name, location)
VALUES
(1, 'IT', 'Bangalore'),
(2, 'HR', 'Ballari'),
(3, 'Finance', 'Mysore');


-- =========================================
-- 1. INNER JOIN
-- =========================================

-- DEFINITION
-- INNER JOIN returns only the records that
-- have matching values in both tables.

-- SYNTAX
-- SELECT columns
-- FROM table1
-- INNER JOIN table2
-- ON table1.column = table2.column;

-- EXAMPLE
SELECT
    Employees.employee_name,
    Employees.department,
    Departments.location
FROM Employees
INNER JOIN Departments
ON Employees.department = Departments.department_name;


-- =========================================
-- 2. LEFT JOIN
-- =========================================

-- DEFINITION
-- LEFT JOIN returns all records from the
-- left table and matching records from
-- the right table.
--
-- If there is no match, NULL is returned
-- for columns from the right table.

-- SYNTAX
-- SELECT columns
-- FROM table1
-- LEFT JOIN table2
-- ON table1.column = table2.column;

-- EXAMPLE
SELECT
    Employees.employee_name,
    Employees.department,
    Departments.location
FROM Employees
LEFT JOIN Departments
ON Employees.department = Departments.department_name;


-- =========================================
-- 3. RIGHT JOIN
-- =========================================

-- DEFINITION
-- RIGHT JOIN returns all records from the
-- right table and matching records from
-- the left table.

-- SYNTAX
-- SELECT columns
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.column = table2.column;

-- EXAMPLE
SELECT
    Employees.employee_name,
    Employees.department,
    Departments.location
FROM Employees
RIGHT JOIN Departments
ON Employees.department = Departments.department_name;


-- =========================================
-- 4. JOIN WITH WHERE
-- =========================================

-- Find IT employees and their department location
SELECT
    Employees.employee_name,
    Employees.salary,
    Departments.location
FROM Employees
INNER JOIN Departments
ON Employees.department = Departments.department_name
WHERE Employees.department = 'IT';


-- =========================================
-- 5. JOIN WITH ORDER BY
-- =========================================

-- Display employees from highest salary
-- to lowest salary with their location
SELECT
    Employees.employee_name,
    Employees.department,
    Employees.salary,
    Departments.location
FROM Employees
INNER JOIN Departments
ON Employees.department = Departments.department_name
ORDER BY Employees.salary DESC;


-- =========================================
-- 6. JOIN USING TABLE ALIAS
-- =========================================

-- DEFINITION
-- Table aliases give shorter names to tables
-- and make JOIN queries easier to read.

-- EXAMPLE
SELECT
    E.employee_name,
    E.department,
    D.location
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name;


-- =========================================
-- 7. JOIN WITH AGGREGATE FUNCTION
-- =========================================

-- Find total salary for each department
SELECT
    D.department_name,
    SUM(E.salary) AS Total_Salary
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name;


-- =========================================
-- 8. JOIN WITH GROUP BY
-- =========================================

-- Count employees in each department
SELECT
    D.department_name,
    COUNT(E.employee_id) AS Employee_Count
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name;


-- =========================================
-- END OF JOINS
-- =========================================

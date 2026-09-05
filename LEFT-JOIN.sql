-- =========================================
-- LEFT JOIN
-- =========================================

-- DEFINITION
-- LEFT JOIN returns all records from the left table
-- and the matching records from the right table.
-- If there is no matching record in the right table,
-- NULL values are returned.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT columns
-- FROM table1
-- LEFT JOIN table2
-- ON table1.column = table2.column;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Display all employees and their department location
SELECT
    E.employee_name,
    E.department,
    D.location
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name;


-- 2. Display employee name and salary
-- with department details
SELECT
    E.employee_name,
    E.salary,
    D.department_name,
    D.location
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name;


-- 3. LEFT JOIN with WHERE
-- Display IT employees and their location
SELECT
    E.employee_name,
    E.department,
    D.location
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name
WHERE E.department = 'IT';


-- 4. LEFT JOIN with ORDER BY
-- Display employees from highest salary
-- to lowest salary
SELECT
    E.employee_name,
    E.department,
    E.salary,
    D.location
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name
ORDER BY E.salary DESC;


-- 5. Find employees whose department
-- has no matching record
SELECT
    E.employee_name,
    E.department
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name
WHERE D.department_name IS NULL;


-- 6. LEFT JOIN with GROUP BY
-- Count employees in each department
SELECT
    D.department_name,
    COUNT(E.employee_id) AS Employee_Count
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name;


-- 7. LEFT JOIN with SUM()
-- Find total salary for each department
SELECT
    D.department_name,
    SUM(E.salary) AS Total_Salary
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name;


-- 8. LEFT JOIN with AVG()
-- Find average salary for each department
SELECT
    D.department_name,
    AVG(E.salary) AS Average_Salary
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name;


-- 9. LEFT JOIN with HAVING
-- Departments with total salary greater than 80000
SELECT
    D.department_name,
    SUM(E.salary) AS Total_Salary
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name
HAVING SUM(E.salary) > 80000;


-- 10. Practical example
-- Display all employees and their department location,
-- including employees without a matching department
SELECT
    E.employee_name,
    E.department,
    E.salary,
    D.location
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name;


-- =========================================
-- END OF LEFT JOIN
-- =========================================

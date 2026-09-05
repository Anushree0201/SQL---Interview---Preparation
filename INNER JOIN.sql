-- =========================================
-- INNER JOIN
-- =========================================

-- DEFINITION
-- INNER JOIN returns only the records that
-- have matching values in both tables.
--
-- If a record does not have a matching value
-- in the other table, it will not appear
-- in the result.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT columns
-- FROM table1
-- INNER JOIN table2
-- ON table1.column = table2.column;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Join Employees and Departments
SELECT
    E.employee_name,
    E.department,
    D.location
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name;


-- 2. Display employee name and salary
-- with department location
SELECT
    E.employee_name,
    E.salary,
    D.department_name,
    D.location
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name;


-- 3. INNER JOIN with WHERE
-- Display only IT employees
SELECT
    E.employee_name,
    E.salary,
    D.location
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name
WHERE E.department = 'IT';


-- 4. INNER JOIN with ORDER BY
-- Display employees from highest salary
-- to lowest salary
SELECT
    E.employee_name,
    E.department,
    E.salary,
    D.location
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name
ORDER BY E.salary DESC;


-- 5. INNER JOIN with multiple conditions
-- Find IT employees earning more than 40000
SELECT
    E.employee_name,
    E.salary,
    D.location
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name
WHERE E.department = 'IT'
AND E.salary > 40000;


-- 6. INNER JOIN with GROUP BY
-- Count employees in each department
SELECT
    D.department_name,
    COUNT(E.employee_id) AS Employee_Count
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name;


-- 7. INNER JOIN with SUM()
-- Find total salary for each department
SELECT
    D.department_name,
    SUM(E.salary) AS Total_Salary
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name;


-- 8. INNER JOIN with AVG()
-- Find average salary for each department
SELECT
    D.department_name,
    AVG(E.salary) AS Average_Salary
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name;


-- 9. INNER JOIN with HAVING
-- Departments with total salary greater than 80000
SELECT
    D.department_name,
    SUM(E.salary) AS Total_Salary
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name
HAVING SUM(E.salary) > 80000;


-- 10. Practical example
-- Display employees who work in departments
-- located in Bangalore
SELECT
    E.employee_name,
    E.department,
    E.salary,
    D.location
FROM Employees AS E
INNER JOIN Departments AS D
ON E.department = D.department_name
WHERE D.location = 'Bangalore';


-- =========================================
-- END OF INNER JOIN
-- =========================================

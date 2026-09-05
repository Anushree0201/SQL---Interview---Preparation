-- =========================================
-- RIGHT JOIN
-- =========================================

-- DEFINITION
-- RIGHT JOIN returns all records from the right table
-- and the matching records from the left table.
-- If there is no matching record in the left table,
-- NULL values are returned.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT columns
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.column = table2.column;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Display all departments and matching employees
SELECT
    E.employee_name,
    E.department,
    D.department_name,
    D.location
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name;


-- 2. Display department names and employee salaries
SELECT
    D.department_name,
    D.location,
    E.employee_name,
    E.salary
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name;


-- 3. RIGHT JOIN with WHERE
-- Display the IT department and its employees
SELECT
    D.department_name,
    D.location,
    E.employee_name,
    E.salary
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name
WHERE D.department_name = 'IT';


-- 4. RIGHT JOIN with ORDER BY
-- Display departments and employees
-- ordered by salary
SELECT
    D.department_name,
    E.employee_name,
    E.salary
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name
ORDER BY E.salary DESC;


-- 5. Find departments with no employees
SELECT
    D.department_name,
    D.location
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name
WHERE E.employee_id IS NULL;


-- 6. RIGHT JOIN with GROUP BY
-- Count employees in each department
SELECT
    D.department_name,
    COUNT(E.employee_id) AS Employee_Count
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name;


-- 7. RIGHT JOIN with SUM()
-- Find total salary for each department
SELECT
    D.department_name,
    SUM(E.salary) AS Total_Salary
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name;


-- 8. RIGHT JOIN with AVG()
-- Find average salary for each department
SELECT
    D.department_name,
    AVG(E.salary) AS Average_Salary
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name;


-- 9. RIGHT JOIN with HAVING
-- Departments with total salary greater than 80000
SELECT
    D.department_name,
    SUM(E.salary) AS Total_Salary
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name
GROUP BY D.department_name
HAVING SUM(E.salary) > 80000;


-- 10. Practical example
-- Display all departments, including departments
-- that do not have any employees
SELECT
    D.department_name,
    D.location,
    E.employee_name,
    E.salary
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name;


-- =========================================
-- END OF RIGHT JOIN
-- =========================================

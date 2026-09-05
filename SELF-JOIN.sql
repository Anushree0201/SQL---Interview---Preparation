-- =========================================
-- SELF JOIN
-- =========================================

-- DEFINITION
-- SELF JOIN is a JOIN where a table is joined
-- with itself.
--
-- It is useful when rows in the same table
-- have a relationship with other rows
-- in that same table.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT columns
-- FROM table_name AS table1
-- JOIN table_name AS table2
-- ON table1.column = table2.column;


-- =========================================
-- PRACTICE TABLE
-- =========================================

-- Add manager_id to Employees
ALTER TABLE Employees
ADD manager_id INT;


-- Assign managers
UPDATE Employees
SET manager_id = NULL
WHERE employee_id = 101;

UPDATE Employees
SET manager_id = 101
WHERE employee_id IN (102, 103);

UPDATE Employees
SET manager_id = 103
WHERE employee_id = 104;

UPDATE Employees
SET manager_id = 101
WHERE employee_id = 105;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Display employees and their managers
SELECT
    E.employee_name AS Employee,
    M.employee_name AS Manager
FROM Employees AS E
LEFT JOIN Employees AS M
ON E.manager_id = M.employee_id;


-- 2. Display employee and manager IDs
SELECT
    E.employee_id AS Employee_ID,
    E.employee_name AS Employee,
    M.employee_id AS Manager_ID,
    M.employee_name AS Manager
FROM Employees AS E
LEFT JOIN Employees AS M
ON E.manager_id = M.employee_id;


-- 3. Display employees who have a manager
SELECT
    E.employee_name AS Employee,
    M.employee_name AS Manager
FROM Employees AS E
INNER JOIN Employees AS M
ON E.manager_id = M.employee_id;


-- 4. Find employees managed by Anu
SELECT
    E.employee_name AS Employee,
    M.employee_name AS Manager
FROM Employees AS E
INNER JOIN Employees AS M
ON E.manager_id = M.employee_id
WHERE M.employee_name = 'Anu';


-- 5. Display employee and manager salaries
SELECT
    E.employee_name AS Employee,
    E.salary AS Employee_Salary,
    M.employee_name AS Manager,
    M.salary AS Manager_Salary
FROM Employees AS E
INNER JOIN Employees AS M
ON E.manager_id = M.employee_id;


-- 6. Find employees earning less than their manager
SELECT
    E.employee_name AS Employee,
    E.salary AS Employee_Salary,
    M.employee_name AS Manager,
    M.salary AS Manager_Salary
FROM Employees AS E
INNER JOIN Employees AS M
ON E.manager_id = M.employee_id
WHERE E.salary < M.salary;


-- 7. Find employees earning more than their manager
SELECT
    E.employee_name AS Employee,
    E.salary AS Employee_Salary,
    M.employee_name AS Manager,
    M.salary AS Manager_Salary
FROM Employees AS E
INNER JOIN Employees AS M
ON E.manager_id = M.employee_id
WHERE E.salary > M.salary;


-- 8. Find employees who report to the same manager
SELECT
    E1.employee_name AS Employee_1,
    E2.employee_name AS Employee_2,
    E1.manager_id
FROM Employees AS E1
INNER JOIN Employees AS E2
ON E1.manager_id = E2.manager_id
AND E1.employee_id < E2.employee_id;


-- 9. Display employee, department and manager
SELECT
    E.employee_name AS Employee,
    E.department,
    M.employee_name AS Manager
FROM Employees AS E
LEFT JOIN Employees AS M
ON E.manager_id = M.employee_id
ORDER BY E.employee_name;


-- 10. Practical example
-- Find all employees managed by employees
-- from the IT department
SELECT
    E.employee_name AS Employee,
    M.employee_name AS Manager,
    M.department AS Manager_Department
FROM Employees AS E
INNER JOIN Employees AS M
ON E.manager_id = M.employee_id
WHERE M.department = 'IT';


-- =========================================
-- END OF SELF JOIN
-- =========================================

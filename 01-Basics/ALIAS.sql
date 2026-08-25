-- =========================================
-- ALIAS
-- =========================================

-- DEFINITION
-- ALIAS is used to give a temporary name to
-- a column or table.
-- It makes query results easier to read.
--
-- AS keyword is commonly used to create an alias.


-- =========================================
-- SYNTAX
-- =========================================

-- COLUMN ALIAS
-- SELECT column_name AS alias_name
-- FROM table_name;

-- TABLE ALIAS
-- SELECT alias.column_name
-- FROM table_name AS alias;


-- =========================================
-- COLUMN ALIAS EXAMPLES
-- =========================================

-- 1. Rename employee_name in the result
SELECT employee_name AS Name
FROM Employees;


-- 2. Rename salary in the result
SELECT salary AS Salary
FROM Employees;


-- 3. Rename multiple columns
SELECT employee_name AS Name,
       department AS Department,
       salary AS Salary
FROM Employees;


-- 4. Alias without AS
SELECT employee_name Name
FROM Employees;


-- 5. Give a meaningful name to salary
SELECT salary AS Employee_Salary
FROM Employees;


-- 6. Alias with WHERE
SELECT employee_name AS Name,
       salary AS Employee_Salary
FROM Employees
WHERE salary > 40000;


-- 7. Alias with ORDER BY
SELECT employee_name AS Name,
       salary AS Employee_Salary
FROM Employees
ORDER BY Employee_Salary DESC;


-- =========================================
-- TABLE ALIAS EXAMPLES
-- =========================================

-- 8. Create an alias for Employees table
SELECT E.employee_name,
       E.department,
       E.salary
FROM Employees AS E;


-- 9. Table alias with WHERE
SELECT E.employee_name,
       E.salary
FROM Employees AS E
WHERE E.department = 'IT';


-- 10. Table alias without AS
SELECT E.employee_name,
       E.city
FROM Employees E;


-- =========================================
-- PRACTICAL EXAMPLE
-- =========================================

-- Display employee names and salaries
-- with readable column names
SELECT employee_name AS Employee_Name,
       salary AS Monthly_Salary
FROM Employees
ORDER BY Monthly_Salary DESC;


-- =========================================
-- END OF ALIAS
-- =========================================

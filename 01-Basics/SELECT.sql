-- =========================================
-- SELECT STATEMENTS
-- =========================================

-- DEFINITION
-- SELECT statement is used to retrieve data
-- from one or more tables in a database.
-- It can be used to select all columns or
-- specific columns and can be combined with
-- clauses like WHERE, ORDER BY and LIMIT.

-- SYNTAX
-- SELECT column1, column2
-- FROM table_name
-- WHERE condition
-- ORDER BY column_name ASC/DESC
-- LIMIT number;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Select all columns
SELECT *
FROM Employees;


-- 2. Select specific columns
SELECT employee_name, department, salary
FROM Employees;


-- 3. Select one column
SELECT employee_name
FROM Employees;


-- 4. DISTINCT - Remove duplicate values
SELECT DISTINCT department
FROM Employees;


-- 5. WHERE - Filter records
SELECT *
FROM Employees
WHERE department = 'IT';


-- 6. AND - Multiple conditions
SELECT *
FROM Employees
WHERE department = 'IT'
AND salary > 40000;


-- 7. OR - Either condition
SELECT *
FROM Employees
WHERE department = 'IT'
OR department = 'HR';


-- 8. NOT - Exclude a condition
SELECT *
FROM Employees
WHERE NOT department = 'HR';


-- 9. ORDER BY - Ascending
SELECT *
FROM Employees
ORDER BY salary ASC;


-- 10. ORDER BY - Descending
SELECT *
FROM Employees
ORDER BY salary DESC;


-- 11. LIMIT - Show only first 3 records
SELECT *
FROM Employees
LIMIT 3;


-- 12. WHERE + ORDER BY + LIMIT
SELECT employee_name, salary
FROM Employees
WHERE salary > 30000
ORDER BY salary DESC
LIMIT 3;


-- =========================================
-- END OF SELECT STATEMENTS
-- =========================================

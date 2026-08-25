-- =========================================
-- BETWEEN OPERATOR
-- =========================================

-- DEFINITION
-- BETWEEN is used with the WHERE clause to
-- select values within a specified range.
-- The starting and ending values are included.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT column1, column2
-- FROM table_name
-- WHERE column_name BETWEEN value1 AND value2;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Employees with salary between 40000 and 50000
SELECT *
FROM Employees
WHERE salary BETWEEN 40000 AND 50000;


-- 2. Employees with age between 23 and 28
SELECT *
FROM Employees
WHERE age BETWEEN 23 AND 28;


-- 3. Employees with salary between 35000 and 45000
SELECT employee_name, salary
FROM Employees
WHERE salary BETWEEN 35000 AND 45000;


-- 4. Employees with age between 22 and 25
SELECT employee_name, age
FROM Employees
WHERE age BETWEEN 22 AND 25;


-- 5. BETWEEN with WHERE condition
-- IT employees earning between 40000 and 60000
SELECT *
FROM Employees
WHERE department = 'IT'
AND salary BETWEEN 40000 AND 60000;


-- 6. BETWEEN with ORDER BY
-- Employees earning between 35000 and 50000
-- sorted by salary
SELECT employee_name, salary
FROM Employees
WHERE salary BETWEEN 35000 AND 50000
ORDER BY salary ASC;


-- 7. NOT BETWEEN
-- Employees whose salary is not between
-- 40000 and 50000
SELECT *
FROM Employees
WHERE salary NOT BETWEEN 40000 AND 50000;


-- 8. NOT BETWEEN for age
-- Employees whose age is not between 23 and 28
SELECT *
FROM Employees
WHERE age NOT BETWEEN 23 AND 28;


-- 9. BETWEEN with specific columns
SELECT employee_name, department, salary
FROM Employees
WHERE salary BETWEEN 40000 AND 60000;


-- 10. BETWEEN with ORDER BY and LIMIT
-- Top 2 employees earning between
-- 35000 and 60000
SELECT employee_name, salary
FROM Employees
WHERE salary BETWEEN 35000 AND 60000
ORDER BY salary DESC
LIMIT 2;


-- =========================================
-- END OF BETWEEN
-- =========================================

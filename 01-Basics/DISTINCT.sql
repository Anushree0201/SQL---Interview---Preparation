-- =========================================
-- DISTINCT
-- =========================================

-- DEFINITION
-- DISTINCT is used to remove duplicate values
-- from the result of a SELECT query.
-- It returns only unique values.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT DISTINCT column_name
-- FROM table_name;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Display unique departments
SELECT DISTINCT department
FROM Employees;


-- 2. Display unique cities
SELECT DISTINCT city
FROM Employees;


-- 3. Display unique ages
SELECT DISTINCT age
FROM Employees;


-- 4. Display unique salaries
SELECT DISTINCT salary
FROM Employees;


-- 5. DISTINCT with WHERE
SELECT DISTINCT department
FROM Employees
WHERE salary > 40000;


-- 6. DISTINCT with multiple columns
SELECT DISTINCT department, city
FROM Employees;


-- 7. DISTINCT with ORDER BY
SELECT DISTINCT department
FROM Employees
ORDER BY department ASC;


-- 8. DISTINCT with WHERE and ORDER BY
SELECT DISTINCT department
FROM Employees
WHERE salary > 40000
ORDER BY department ASC;


-- 9. Find unique cities of IT employees
SELECT DISTINCT city
FROM Employees
WHERE department = 'IT';


-- 10. Find unique departments of employees
-- earning more than 45000
SELECT DISTINCT department
FROM Employees
WHERE salary > 45000;


-- =========================================
-- END OF DISTINCT
-- =========================================

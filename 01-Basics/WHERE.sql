-- =========================================
-- WHERE CLAUSE
-- =========================================

-- DEFINITION
-- WHERE clause is used to filter records
-- based on a specified condition.
-- It returns only the rows that satisfy
-- the given condition.

-- SYNTAX
-- SELECT column1, column2
-- FROM table_name
-- WHERE condition;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Employees from IT department
SELECT *
FROM Employees
WHERE department = 'IT';


-- 2. Employees with salary greater than 40000
SELECT *
FROM Employees
WHERE salary > 40000;


-- 3. Employees with salary less than 50000
SELECT *
FROM Employees
WHERE salary < 50000;


-- 4. Employees whose age is 25
SELECT *
FROM Employees
WHERE age = 25;


-- 5. Employees from Bangalore
SELECT *
FROM Employees
WHERE city = 'Bangalore';


-- 6. Employees with salary greater than or equal to 45000
SELECT *
FROM Employees
WHERE salary >= 45000;


-- 7. Employees with salary less than or equal to 40000
SELECT *
FROM Employees
WHERE salary <= 40000;


-- 8. Employees NOT from IT department
SELECT *
FROM Employees
WHERE department != 'IT';


-- 9. Multiple conditions using AND
SELECT *
FROM Employees
WHERE department = 'IT'
AND salary > 40000;


-- 10. Multiple conditions using OR
SELECT *
FROM Employees
WHERE department = 'IT'
OR city = 'Mysore';


-- =========================================
-- END OF WHERE CLAUSE
-- =========================================

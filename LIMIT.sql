-- =========================================
-- LIMIT
-- =========================================

-- DEFINITION
-- LIMIT is used to restrict the number of
-- records returned by a SELECT query.
-- It is commonly used when we need only a
-- specific number of rows from the result.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT column1, column2
-- FROM table_name
-- LIMIT number;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Display first 3 records
SELECT *
FROM Employees
LIMIT 3;


-- 2. Display first 2 employees
SELECT *
FROM Employees
LIMIT 2;


-- 3. Display first 1 employee
SELECT *
FROM Employees
LIMIT 1;


-- 4. Display first 3 employee names
SELECT employee_name
FROM Employees
LIMIT 3;


-- 5. LIMIT with ORDER BY
-- Display the 3 highest-paid employees
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 3;


-- 6. LIMIT with ORDER BY
-- Display the 2 lowest-paid employees
SELECT *
FROM Employees
ORDER BY salary ASC
LIMIT 2;


-- 7. LIMIT with WHERE
-- Display first 2 IT employees
SELECT *
FROM Employees
WHERE department = 'IT'
LIMIT 2;


-- 8. LIMIT with WHERE and ORDER BY
-- Display the top 2 highest-paid IT employees
SELECT employee_name, salary
FROM Employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 2;


-- 9. Display first 3 employees from Bangalore
SELECT *
FROM Employees
WHERE city = 'Bangalore'
LIMIT 3;


-- 10. LIMIT with specific columns
SELECT employee_name, department, salary
FROM Employees
LIMIT 3;


-- =========================================
-- END OF LIMIT
-- =========================================

-- =========================================
-- ORDER BY CLAUSE
-- =========================================

-- SYNTAX
-- SELECT column1, column2, ...
-- FROM table_name
-- ORDER BY column_name ASC | DESC;


-- ASC = Ascending order (lowest to highest / A to Z)
-- DESC = Descending order (highest to lowest / Z to A)


-- 1. Sort salary from lowest to highest

-- SYNTAX
-- SELECT *
-- FROM Employees
-- ORDER BY salary ASC;

SELECT *
FROM Employees
ORDER BY salary ASC;


-- 2. Sort salary from highest to lowest

-- SYNTAX
-- SELECT *
-- FROM Employees
-- ORDER BY salary DESC;

SELECT *
FROM Employees
ORDER BY salary DESC;


-- 3. Sort employee names alphabetically

SELECT *
FROM Employees
ORDER BY employee_name ASC;


-- 4. Sort employees by age

SELECT *
FROM Employees
ORDER BY age ASC;


-- 5. Sort by multiple columns

-- SYNTAX
-- SELECT *
-- FROM table_name
-- ORDER BY column1 ASC, column2 DESC;

SELECT *
FROM Employees
ORDER BY department ASC, salary DESC;


-- 6. WHERE + ORDER BY

SELECT *
FROM Employees
WHERE department = 'IT'
ORDER BY salary DESC;


-- 7. ORDER BY + LIMIT

SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 3;


-- 8. Select specific columns and sort

SELECT employee_name, salary
FROM Employees
ORDER BY salary DESC;


-- 9. Sort names in descending order

SELECT employee_name
FROM Employees
ORDER BY employee_name DESC;


-- 10. Interview Practice:
-- Find the 3 employees with the highest salary

SELECT employee_name, salary
FROM Employees
ORDER BY salary DESC
LIMIT 3;

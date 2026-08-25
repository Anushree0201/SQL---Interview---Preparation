-- =========================================
-- AND, OR, NOT OPERATORS
-- =========================================

-- DEFINITION
-- AND, OR and NOT are logical operators used
-- with the WHERE clause to combine or
-- reverse conditions.


-- =========================================
-- SYNTAX
-- =========================================

-- AND
-- SELECT *
-- FROM table_name
-- WHERE condition1 AND condition2;

-- OR
-- SELECT *
-- FROM table_name
-- WHERE condition1 OR condition2;

-- NOT
-- SELECT *
-- FROM table_name
-- WHERE NOT condition;


-- =========================================
-- AND EXAMPLES
-- =========================================

-- 1. IT employees with salary greater than 40000
SELECT *
FROM Employees
WHERE department = 'IT'
AND salary > 40000;


-- 2. Employees from Bangalore with salary
-- greater than 40000
SELECT *
FROM Employees
WHERE city = 'Bangalore'
AND salary > 40000;


-- 3. Employees older than 25 with salary
-- greater than 45000
SELECT *
FROM Employees
WHERE age > 25
AND salary > 45000;


-- 4. IT employees from Bangalore
SELECT *
FROM Employees
WHERE department = 'IT'
AND city = 'Bangalore';


-- =========================================
-- OR EXAMPLES
-- =========================================

-- 5. Employees from IT or HR
SELECT *
FROM Employees
WHERE department = 'IT'
OR department = 'HR';


-- 6. Employees from Bangalore or Mysore
SELECT *
FROM Employees
WHERE city = 'Bangalore'
OR city = 'Mysore';


-- 7. Employees with salary 35000 or 50000
SELECT *
FROM Employees
WHERE salary = 35000
OR salary = 50000;


-- 8. Employees from IT or earning more than 50000
SELECT *
FROM Employees
WHERE department = 'IT'
OR salary > 50000;


-- =========================================
-- NOT EXAMPLES
-- =========================================

-- 9. Employees who are not from IT
SELECT *
FROM Employees
WHERE NOT department = 'IT';


-- 10. Employees who are not from Bangalore
SELECT *
FROM Employees
WHERE NOT city = 'Bangalore';


-- 11. Employees whose salary is not 40000
SELECT *
FROM Employees
WHERE NOT salary = 40000;


-- 12. Employees who are not from HR
SELECT *
FROM Employees
WHERE NOT department = 'HR';


-- =========================================
-- COMBINATION EXAMPLES
-- =========================================

-- 13. IT employees from Bangalore
-- with salary greater than 40000
SELECT *
FROM Employees
WHERE department = 'IT'
AND city = 'Bangalore'
AND salary > 40000;


-- 14. Employees from IT or HR
-- with salary greater than 35000
SELECT *
FROM Employees
WHERE (department = 'IT' OR department = 'HR')
AND salary > 35000;


-- 15. Employees who are not from IT
-- and salary greater than 40000
SELECT *
FROM Employees
WHERE NOT department = 'IT'
AND salary > 40000;


-- =========================================
-- END OF AND, OR, NOT
-- =========================================

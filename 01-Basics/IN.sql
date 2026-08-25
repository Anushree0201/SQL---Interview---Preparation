-- =========================================
-- IN OPERATOR
-- =========================================

-- DEFINITION
-- IN is used with the WHERE clause to check
-- whether a value matches any value in a
-- specified list.
--
-- It is a shorter alternative to using
-- multiple OR conditions.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT column1, column2
-- FROM table_name
-- WHERE column_name IN (value1, value2, value3);


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Employees from IT or HR
SELECT *
FROM Employees
WHERE department IN ('IT', 'HR');


-- 2. Employees from Bangalore or Mysore
SELECT *
FROM Employees
WHERE city IN ('Bangalore', 'Mysore');


-- 3. Employees with specific ages
SELECT *
FROM Employees
WHERE age IN (22, 25, 30);


-- 4. Employees with specific salaries
SELECT *
FROM Employees
WHERE salary IN (35000, 45000, 60000);


-- 5. Employees with specific employee IDs
SELECT *
FROM Employees
WHERE employee_id IN (101, 103, 105);


-- 6. IN with specific columns
SELECT employee_name, department
FROM Employees
WHERE department IN ('IT', 'Finance');


-- 7. IN with WHERE condition
-- Employees from IT or HR earning
-- more than 35000
SELECT *
FROM Employees
WHERE department IN ('IT', 'HR')
AND salary > 35000;


-- 8. IN with ORDER BY
-- Display IT and HR employees
-- from highest salary to lowest
SELECT *
FROM Employees
WHERE department IN ('IT', 'HR')
ORDER BY salary DESC;


-- 9. NOT IN
-- Employees who are not from IT or HR
SELECT *
FROM Employees
WHERE department NOT IN ('IT', 'HR');


-- 10. NOT IN with cities
-- Employees who are not from Bangalore or Mysore
SELECT *
FROM Employees
WHERE city NOT IN ('Bangalore', 'Mysore');


-- =========================================
-- END OF IN
-- =========================================

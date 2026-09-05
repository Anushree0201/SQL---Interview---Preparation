-- =========================================
-- GROUP BY CLAUSE
-- =========================================

-- DEFINITION
-- GROUP BY is used to group rows that have
-- the same values in one or more columns.
-- It is commonly used with aggregate functions
-- such as COUNT(), SUM(), AVG(), MIN() and MAX().


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT column_name, AGGREGATE_FUNCTION(column_name)
-- FROM table_name
-- GROUP BY column_name;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Count employees in each department
SELECT department, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department;


-- 2. Find total salary for each department
SELECT department, SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department;


-- 3. Find average salary for each department
SELECT department, AVG(salary) AS Average_Salary
FROM Employees
GROUP BY department;


-- 4. Find minimum salary in each department
SELECT department, MIN(salary) AS Minimum_Salary
FROM Employees
GROUP BY department;


-- 5. Find maximum salary in each department
SELECT department, MAX(salary) AS Maximum_Salary
FROM Employees
GROUP BY department;


-- 6. Count employees in each city
SELECT city, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY city;


-- 7. Find total salary in each city
SELECT city, SUM(salary) AS Total_Salary
FROM Employees
GROUP BY city;


-- 8. Find average age in each department
SELECT department, AVG(age) AS Average_Age
FROM Employees
GROUP BY department;


-- 9. GROUP BY with ORDER BY
-- Display departments from highest
-- total salary to lowest
SELECT department, SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department
ORDER BY Total_Salary DESC;


-- 10. GROUP BY multiple columns
-- Count employees based on department and city
SELECT department, city, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department, city;


-- 11. GROUP BY with WHERE
-- Find the number of employees in each department
-- whose salary is greater than 40000
SELECT department, COUNT(*) AS Employee_Count
FROM Employees
WHERE salary > 40000
GROUP BY department;


-- 12. Practical example
-- Find the highest salary in each department
SELECT department, MAX(salary) AS Highest_Salary
FROM Employees
GROUP BY department;


-- =========================================
-- END OF GROUP BY
-- =========================================

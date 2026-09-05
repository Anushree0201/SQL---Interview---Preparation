-- =========================================
-- HAVING CLAUSE
-- =========================================

-- DEFINITION
-- HAVING is used to filter grouped results
-- after GROUP BY.
-- It is commonly used with aggregate functions
-- such as COUNT(), SUM(), AVG(), MIN() and MAX().
--
-- WHERE filters individual rows.
-- HAVING filters groups.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT column_name, AGGREGATE_FUNCTION(column_name)
-- FROM table_name
-- GROUP BY column_name
-- HAVING condition;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Departments with more than 1 employee
SELECT department, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department
HAVING COUNT(*) > 1;


-- 2. Departments with total salary greater than 80000
SELECT department, SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 80000;


-- 3. Departments with average salary greater than 40000
SELECT department, AVG(salary) AS Average_Salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 40000;


-- 4. Departments where the highest salary
-- is greater than 45000
SELECT department, MAX(salary) AS Highest_Salary
FROM Employees
GROUP BY department
HAVING MAX(salary) > 45000;


-- 5. Departments where the lowest salary
-- is greater than 35000
SELECT department, MIN(salary) AS Lowest_Salary
FROM Employees
GROUP BY department
HAVING MIN(salary) > 35000;


-- 6. Cities with more than 1 employee
SELECT city, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY city
HAVING COUNT(*) > 1;


-- 7. GROUP BY + HAVING + ORDER BY
-- Departments with more than 1 employee,
-- sorted by employee count
SELECT department, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY department
HAVING COUNT(*) > 1
ORDER BY Employee_Count DESC;


-- 8. WHERE + GROUP BY + HAVING
-- Find departments where employees earning
-- more than 30000 are more than 1
SELECT department, COUNT(*) AS Employee_Count
FROM Employees
WHERE salary > 30000
GROUP BY department
HAVING COUNT(*) > 1;


-- 9. Total salary with HAVING
-- Display departments whose total salary
-- is greater than 100000
SELECT department, SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 100000;


-- 10. Practical example
-- Find departments with an average salary
-- greater than 45000
SELECT department, AVG(salary) AS Average_Salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 45000;


-- =========================================
-- END OF HAVING
-- =========================================

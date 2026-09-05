-- =========================================
-- AGGREGATE FUNCTIONS
-- =========================================

-- DEFINITION
-- Aggregate functions perform calculations
-- on multiple rows and return a single result.
--
-- Common aggregate functions:
-- COUNT()
-- SUM()
-- AVG()
-- MIN()
-- MAX()


-- =========================================
-- SYNTAX
-- =========================================

-- COUNT(column_name);

-- SUM(column_name);

-- AVG(column_name);

-- MIN(column_name);

-- MAX(column_name);


-- =========================================
-- 1. COUNT()
-- =========================================

-- Returns the number of records.

SELECT COUNT(*) AS Total_Employees
FROM Employees;


-- Count employees with a specific department
SELECT COUNT(department) AS Department_Count
FROM Employees;


-- =========================================
-- 2. SUM()
-- =========================================

-- Returns the total of numeric values.

SELECT SUM(salary) AS Total_Salary
FROM Employees;


-- =========================================
-- 3. AVG()
-- =========================================

-- Returns the average of numeric values.

SELECT AVG(salary) AS Average_Salary
FROM Employees;


-- =========================================
-- 4. MIN()
-- =========================================

-- Returns the smallest value.

SELECT MIN(salary) AS Lowest_Salary
FROM Employees;


-- =========================================
-- 5. MAX()
-- =========================================

-- Returns the largest value.

SELECT MAX(salary) AS Highest_Salary
FROM Employees;


-- =========================================
-- 6. ALL AGGREGATE FUNCTIONS TOGETHER
-- =========================================

SELECT
    COUNT(*) AS Total_Employees,
    SUM(salary) AS Total_Salary,
    AVG(salary) AS Average_Salary,
    MIN(salary) AS Minimum_Salary,
    MAX(salary) AS Maximum_Salary
FROM Employees;


-- =========================================
-- 7. AGGREGATE FUNCTIONS WITH WHERE
-- =========================================

-- Calculate salary statistics for IT employees.

SELECT
    COUNT(*) AS IT_Employees,
    SUM(salary) AS Total_IT_Salary,
    AVG(salary) AS Average_IT_Salary,
    MIN(salary) AS Minimum_IT_Salary,
    MAX(salary) AS Maximum_IT_Salary
FROM Employees
WHERE department = 'IT';


-- =========================================
-- 8. AGGREGATE FUNCTIONS WITH GROUP BY
-- =========================================

-- Calculate salary statistics
-- for each department.

SELECT
    department,
    COUNT(*) AS Employee_Count,
    SUM(salary) AS Total_Salary,
    AVG(salary) AS Average_Salary,
    MIN(salary) AS Minimum_Salary,
    MAX(salary) AS Maximum_Salary
FROM Employees
GROUP BY department;


-- =========================================
-- 9. GROUP BY WITH ORDER BY
-- =========================================

-- Display departments based on
-- highest total salary.

SELECT
    department,
    SUM(salary) AS Total_Salary
FROM Employees
GROUP BY department
ORDER BY Total_Salary DESC;


-- =========================================
-- 10. AGGREGATE FUNCTION WITH HAVING
-- =========================================

-- Display departments whose
-- average salary is greater than 40000.

SELECT
    department,
    AVG(salary) AS Average_Salary
FROM Employees
GROUP BY department
HAVING AVG(salary) > 40000;





-- =========================================
-- END OF AGGREGATE FUNCTIONS
-- =========================================

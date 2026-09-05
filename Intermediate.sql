-- =========================================
-- AGGREGATE FUNCTIONS
-- =========================================

-- DEFINITION
-- Aggregate functions perform calculations
-- on multiple rows and return a single value.
--
-- Common aggregate functions:
-- COUNT() - Counts rows
-- SUM()   - Calculates total
-- AVG()   - Calculates average
-- MIN()   - Finds minimum value
-- MAX()   - Finds maximum value


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT AGGREGATE_FUNCTION(column_name)
-- FROM table_name;


-- =========================================
-- 1. COUNT()
-- =========================================

-- DEFINITION
-- COUNT() returns the number of rows
-- that match the query.

-- SYNTAX
-- SELECT COUNT(column_name)
-- FROM table_name;

-- Count all employees
SELECT COUNT(*)
FROM Employees;

-- Count employee IDs
SELECT COUNT(employee_id)
FROM Employees;

-- Count employees in IT department
SELECT COUNT(*)
FROM Employees
WHERE department = 'IT';


-- =========================================
-- 2. SUM()
-- =========================================

-- DEFINITION
-- SUM() calculates the total value
-- of a numeric column.

-- SYNTAX
-- SELECT SUM(column_name)
-- FROM table_name;

-- Calculate total salary
SELECT SUM(salary)
FROM Employees;

-- Calculate total salary of IT employees
SELECT SUM(salary)
FROM Employees
WHERE department = 'IT';


-- =========================================
-- 3. AVG()
-- =========================================

-- DEFINITION
-- AVG() calculates the average value
-- of a numeric column.

-- SYNTAX
-- SELECT AVG(column_name)
-- FROM table_name;

-- Calculate average salary
SELECT AVG(salary)
FROM Employees;

-- Calculate average salary of IT employees
SELECT AVG(salary)
FROM Employees
WHERE department = 'IT';


-- =========================================
-- 4. MIN()
-- =========================================

-- DEFINITION
-- MIN() returns the smallest value
-- from a column.

-- SYNTAX
-- SELECT MIN(column_name)
-- FROM table_name;

-- Find the lowest salary
SELECT MIN(salary)
FROM Employees;

-- Find the youngest employee age
SELECT MIN(age)
FROM Employees;


-- =========================================
-- 5. MAX()
-- =========================================

-- DEFINITION
-- MAX() returns the largest value
-- from a column.

-- SYNTAX
-- SELECT MAX(column_name)
-- FROM table_name;

-- Find the highest salary
SELECT MAX(salary)
FROM Employees;

-- Find the oldest employee age
SELECT MAX(age)
FROM Employees;


-- =========================================
-- 6. MULTIPLE AGGREGATE FUNCTIONS
-- =========================================

-- DEFINITION
-- Multiple aggregate functions can be used
-- together in a single SELECT statement.

-- SYNTAX
-- SELECT COUNT(column_name),
--        SUM(column_name),
--        AVG(column_name),
--        MIN(column_name),
--        MAX(column_name)
-- FROM table_name;

-- Employee salary summary
SELECT
    COUNT(salary) AS Total_Employees,
    SUM(salary) AS Total_Salary,
    AVG(salary) AS Average_Salary,
    MIN(salary) AS Minimum_Salary,
    MAX(salary) AS Maximum_Salary
FROM Employees;


-- =========================================
-- 7. AGGREGATE FUNCTIONS WITH WHERE
-- =========================================

-- Find salary statistics for IT employees
SELECT
    COUNT(*) AS Total_IT_Employees,
    SUM(salary) AS Total_IT_Salary,
    AVG(salary) AS Average_IT_Salary,
    MIN(salary) AS Minimum_IT_Salary,
    MAX(salary) AS Maximum_IT_Salary
FROM Employees
WHERE department = 'IT';


-- =========================================
-- 8. AGGREGATE FUNCTIONS WITH ALIAS
-- =========================================

-- Display aggregate results with readable names
SELECT
    COUNT(*) AS Employee_Count,
    SUM(salary) AS Total_Salary,
    AVG(salary) AS Average_Salary,
    MIN(salary) AS Lowest_Salary,
    MAX(salary) AS Highest_Salary
FROM Employees;


-- =========================================
-- END OF AGGREGATE FUNCTIONS
-- =========================================

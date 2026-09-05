-- =========================================
-- SUBQUERIES
-- =========================================

-- DEFINITION
-- A subquery is a query written inside another
-- SQL query.
--
-- The inner query is called the SUBQUERY.
-- The outer query uses the result returned
-- by the subquery.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT columns
-- FROM table_name
-- WHERE column_name OPERATOR
--     (SELECT column_name
--      FROM table_name
--      WHERE condition);


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Employees earning more than the
-- average salary
SELECT *
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);


-- 2. Employee with the highest salary
SELECT *
FROM Employees
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
);


-- 3. Employee with the lowest salary
SELECT *
FROM Employees
WHERE salary = (
    SELECT MIN(salary)
    FROM Employees
);


-- 4. Employees earning more than Anu
SELECT *
FROM Employees
WHERE salary > (
    SELECT salary
    FROM Employees
    WHERE employee_name = 'Anu'
);


-- 5. Employees belonging to the same
-- department as Anu
SELECT *
FROM Employees
WHERE department = (
    SELECT department
    FROM Employees
    WHERE employee_name = 'Anu'
);


-- 6. Employees earning more than the
-- average IT salary
SELECT *
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
    WHERE department = 'IT'
);


-- 7. Employees from the department
-- having the highest average salary
SELECT *
FROM Employees
WHERE department = (
    SELECT department
    FROM Employees
    GROUP BY department
    ORDER BY AVG(salary) DESC
    LIMIT 1
);


-- 8. Subquery with IN
-- Employees who belong to departments
-- having at least one employee earning
-- more than 50000
SELECT *
FROM Employees
WHERE department IN (
    SELECT department
    FROM Employees
    WHERE salary > 50000
);


-- 9. Subquery with NOT IN
-- Employees who do not belong to departments
-- having an employee earning more than 50000
SELECT *
FROM Employees
WHERE department NOT IN (
    SELECT department
    FROM Employees
    WHERE salary > 50000
);


-- 10. Subquery with FROM
-- Find the average of department-wise
-- average salaries
SELECT AVG(Average_Salary) AS Overall_Average
FROM (
    SELECT department, AVG(salary) AS Average_Salary
    FROM Employees
    GROUP BY department
) AS A;


-- 11. Subquery with SELECT
-- Display each employee's salary and
-- the overall average salary
SELECT
    employee_name,
    salary,
    (SELECT AVG(salary)
     FROM Employees) AS Average_Salary
FROM Employees;


-- 12. Practical example
-- Find employees whose salary is greater
-- than the highest HR salary
SELECT *
FROM Employees
WHERE salary > (
    SELECT MAX(salary)
    FROM Employees
    WHERE department = 'HR'
);


-- =========================================
-- END OF SUBQUERIES
-- =========================================

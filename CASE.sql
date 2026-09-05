-- =========================================
-- CASE STATEMENT
-- =========================================

-- DEFINITION
-- CASE is used to apply conditions in SQL
-- and return different results based on
-- those conditions.
--
-- It works similar to IF-ELSE logic
-- in programming languages.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT
--     CASE
--         WHEN condition1 THEN result1
--         WHEN condition2 THEN result2
--         ELSE result3
--     END AS alias_name
-- FROM table_name;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Categorize employees based on salary
SELECT employee_name, salary,
    CASE
        WHEN salary >= 50000 THEN 'High Salary'
        WHEN salary >= 40000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS Salary_Category
FROM Employees;


-- 2. Categorize employees based on age
SELECT employee_name, age,
    CASE
        WHEN age >= 30 THEN 'Senior'
        WHEN age >= 25 THEN 'Mid-Level'
        ELSE 'Junior'
    END AS Employee_Level
FROM Employees;


-- 3. Check employee department
SELECT employee_name, department,
    CASE
        WHEN department = 'IT' THEN 'Technology'
        WHEN department = 'HR' THEN 'Human Resources'
        WHEN department = 'Finance' THEN 'Financial Department'
        ELSE 'Other Department'
    END AS Department_Type
FROM Employees;


-- 4. CASE with ORDER BY
SELECT employee_name, salary,
    CASE
        WHEN salary >= 50000 THEN 'High'
        WHEN salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS Salary_Category
FROM Employees
ORDER BY salary DESC;


-- 5. CASE with WHERE
SELECT employee_name, salary,
    CASE
        WHEN salary >= 50000 THEN 'High Salary'
        WHEN salary >= 40000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS Salary_Category
FROM Employees
WHERE salary > 35000;


-- 6. CASE with multiple conditions
SELECT employee_name, age, salary,
    CASE
        WHEN age >= 30 AND salary >= 50000 THEN 'Senior High Earner'
        WHEN age >= 25 AND salary >= 40000 THEN 'Experienced'
        ELSE 'Junior'
    END AS Employee_Category
FROM Employees;


-- 7. Practical example
-- Categorize employees based on salary
SELECT employee_name, department, salary,
    CASE
        WHEN salary >= 55000 THEN 'Excellent'
        WHEN salary >= 45000 THEN 'Good'
        WHEN salary >= 35000 THEN 'Average'
        ELSE 'Low'
    END AS Performance_Category
FROM Employees;


-- =========================================
-- END OF CASE STATEMENT
-- =========================================

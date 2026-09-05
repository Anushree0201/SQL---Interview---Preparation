-- =========================================
-- FULL OUTER JOIN
-- =========================================

-- DEFINITION
-- FULL OUTER JOIN returns all records from
-- both tables.
-- It includes matching records and also
-- unmatched records from both tables.
--
-- MySQL does not directly support
-- FULL OUTER JOIN.
-- We can achieve it using LEFT JOIN + RIGHT JOIN
-- with UNION.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT columns
-- FROM table1
-- LEFT JOIN table2
-- ON table1.column = table2.column
--
-- UNION
--
-- SELECT columns
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.column = table2.column;


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. FULL OUTER JOIN using UNION
SELECT
    E.employee_name,
    E.department,
    D.department_name,
    D.location
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name

UNION

SELECT
    E.employee_name,
    E.department,
    D.department_name,
    D.location
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name;


-- 2. Display employee and department details
SELECT
    E.employee_id,
    E.employee_name,
    D.department_name,
    D.location
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name

UNION

SELECT
    E.employee_id,
    E.employee_name,
    D.department_name,
    D.location
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name;


-- 3. FULL OUTER JOIN with salary
SELECT
    E.employee_name,
    E.salary,
    E.department,
    D.location
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name

UNION

SELECT
    E.employee_name,
    E.salary,
    E.department,
    D.location
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name;


-- 4. Find unmatched records from Employees
SELECT
    E.employee_name,
    E.department
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name
WHERE D.department_name IS NULL;


-- 5. Find unmatched records from Departments
SELECT
    D.department_name,
    D.location
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name
WHERE E.employee_id IS NULL;


-- 6. FULL OUTER JOIN with ORDER BY
SELECT
    E.employee_name,
    E.department,
    D.department_name,
    D.location
FROM Employees AS E
LEFT JOIN Departments AS D
ON E.department = D.department_name

UNION

SELECT
    E.employee_name,
    E.department,
    D.department_name,
    D.location
FROM Employees AS E
RIGHT JOIN Departments AS D
ON E.department = D.department_name

ORDER BY employee_name;


-- =========================================
-- END OF FULL OUTER JOIN
-- =========================================

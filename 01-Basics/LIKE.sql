-- =========================================
-- LIKE OPERATOR
-- =========================================

-- DEFINITION
-- LIKE is used with the WHERE clause to search
-- for a specific pattern in a column.
--
-- % = Represents zero or more characters.
-- _ = Represents exactly one character.


-- =========================================
-- SYNTAX
-- =========================================

-- SELECT column1, column2
-- FROM table_name
-- WHERE column_name LIKE 'pattern';


-- =========================================
-- EXAMPLES
-- =========================================

-- 1. Names starting with 'A'
SELECT *
FROM Employees
WHERE employee_name LIKE 'A%';


-- 2. Names ending with 'u'
SELECT *
FROM Employees
WHERE employee_name LIKE '%u';


-- 3. Names containing 'a'
SELECT *
FROM Employees
WHERE employee_name LIKE '%a%';


-- 4. Names containing 'an'
SELECT *
FROM Employees
WHERE employee_name LIKE '%an%';


-- 5. Names starting with 'K'
SELECT *
FROM Employees
WHERE employee_name LIKE 'K%';


-- 6. Names with exactly 4 characters
SELECT *
FROM Employees
WHERE employee_name LIKE '____';


-- 7. Names where the second character is 'a'
SELECT *
FROM Employees
WHERE employee_name LIKE '_a%';


-- 8. Cities starting with 'B'
SELECT *
FROM Employees
WHERE city LIKE 'B%';


-- 9. Cities ending with 'e'
SELECT *
FROM Employees
WHERE city LIKE '%e';


-- 10. Departments containing 'I'
SELECT *
FROM Employees
WHERE department LIKE '%I%';


-- 11. LIKE with WHERE condition
-- Find IT employees whose name starts with 'A'
SELECT *
FROM Employees
WHERE department = 'IT'
AND employee_name LIKE 'A%';


-- 12. LIKE with ORDER BY
-- Display employees whose name starts with 'A'
-- in alphabetical order
SELECT *
FROM Employees
WHERE employee_name LIKE 'A%'
ORDER BY employee_name ASC;


-- =========================================
-- END OF LIKE
-- =========================================

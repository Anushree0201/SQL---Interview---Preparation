-- =========================================
-- NULL VALUES
-- =========================================

-- DEFINITION
-- NULL represents a missing, unknown, or unavailable
-- value in a database.
--
-- NULL is not the same as 0, an empty string (''),
-- or a blank value.


-- =========================================
-- SYNTAX
-- =========================================

-- CHECK FOR NULL
-- SELECT column1, column2
-- FROM table_name
-- WHERE column_name IS NULL;

-- CHECK FOR NOT NULL
-- SELECT column1, column2
-- FROM table_name
-- WHERE column_name IS NOT NULL;


-- =========================================
-- EXAMPLES
-- =========================================

-- Add a column that can contain NULL values
ALTER TABLE Employees
ADD phone VARCHAR(15);


-- 1. Find employees whose phone number is NULL
SELECT *
FROM Employees
WHERE phone IS NULL;


-- 2. Find employees whose phone number is NOT NULL
SELECT *
FROM Employees
WHERE phone IS NOT NULL;


-- 3. Display employee names with NULL phone numbers
SELECT employee_name
FROM Employees
WHERE phone IS NULL;


-- 4. Display employees with a known phone number
SELECT employee_name, phone
FROM Employees
WHERE phone IS NOT NULL;


-- 5. Find employees whose department is NULL
SELECT *
FROM Employees
WHERE department IS NULL;


-- 6. Find employees whose city is NOT NULL
SELECT *
FROM Employees
WHERE city IS NOT NULL;


-- 7. IS NULL with ORDER BY
SELECT employee_name, phone
FROM Employees
WHERE phone IS NULL
ORDER BY employee_name ASC;


-- 8. IS NOT NULL with ORDER BY
SELECT employee_name, phone
FROM Employees
WHERE phone IS NOT NULL
ORDER BY employee_name ASC;


-- 9. Update a NULL value
UPDATE Employees
SET phone = '9876543210'
WHERE employee_id = 101;


-- 10. Check NULL values after updating
SELECT *
FROM Employees
WHERE phone IS NULL;


-- =========================================
-- IMPORTANT
-- =========================================

-- Correct:
-- WHERE phone IS NULL;

-- Correct:
-- WHERE phone IS NOT NULL;

-- Do NOT use:
-- WHERE phone = NULL;

-- Do NOT use:
-- WHERE phone != NULL;


-- =========================================
-- END OF NULL VALUES
-- =========================================

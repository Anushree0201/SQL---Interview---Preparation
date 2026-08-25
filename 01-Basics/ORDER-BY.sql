-- =========================================
-- ORDER BY CLAUSE
-- =========================================

-- 1. Sort salary from lowest to highest
SELECT *
FROM Employees
ORDER BY salary ASC;

-- 2. Sort salary from highest to lowest
SELECT *
FROM Employees
ORDER BY salary DESC;

-- 3. Sort employee names alphabetically
SELECT *
FROM Employees
ORDER BY employee_name ASC;

-- 4. Sort employees by age
SELECT *
FROM Employees
ORDER BY age ASC;

-- 5. Sort by department and then salary
SELECT *
FROM Employees
ORDER BY department ASC, salary DESC;

-- 6. IT employees with highest salary first
SELECT *
FROM Employees
WHERE department = 'IT'
ORDER BY salary DESC;

-- 7. Top 3 highest-paid employees
SELECT *
FROM Employees
ORDER BY salary DESC
LIMIT 3;

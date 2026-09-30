-- ============================================================
-- EMPLOYEE AND COMPANY SALARY ANALYSIS
-- ============================================================


-- ============================================================
-- 1. CREATE EMPLOYEE TABLE
-- ============================================================

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    company VARCHAR(50),
    salary DECIMAL(10,2),
    location VARCHAR(50)
);


-- ============================================================
-- 2. POPULATE EMPLOYEE TABLE
-- ============================================================

INSERT INTO Employee (emp_id, emp_name, company, salary, location)
VALUES
(1, 'Rahul', 'Infosys', 45000, 'Pune'),
(2, 'Amit', 'Infosys', 55000, 'Mumbai'),
(3, 'Sneha', 'TCS', 60000, 'Pune'),
(4, 'Priya', 'Syntel', 40000, 'Nagpur'),
(5, 'Rohit', 'Syntel', 50000, 'Pune'),
(6, 'Neha', 'Wipro', 65000, 'Mumbai'),
(7, 'Karan', 'Infosys', 70000, 'Nagpur'),
(8, 'Pooja', 'TCS', 75000, 'Mumbai'),
(9, 'Vikas', 'Syntel', 45000, 'Nagpur'),
(10, 'Anjali', 'Wipro', 55000, 'Pune');


-- ============================================================
-- 3. FIND AVERAGE SALARY PAID BY INFOSYS
-- ============================================================

SELECT AVG(salary) AS Average_Salary
FROM Employee
WHERE company = 'Infosys';


-- ============================================================
-- 4. FIND TOTAL SALARY PAID TO EMPLOYEES WORKING IN INFOSYS
-- ============================================================

SELECT SUM(salary) AS Total_Salary
FROM Employee
WHERE company = 'Infosys';


-- ============================================================
-- 5. FIND TOTAL NUMBER OF EMPLOYEES IN SYNTEL
-- ============================================================

SELECT COUNT(*) AS Total_Employees
FROM Employee
WHERE company = 'Syntel';


-- ============================================================
-- 6. DISPLAY COMPANIES BASED ON TOTAL SALARY CONDITION
--    Example: Companies having total salary greater than 100000
-- ============================================================

SELECT company, SUM(salary) AS Total_Salary
FROM Employee
GROUP BY company
HAVING SUM(salary) > 100000;


-- ============================================================
-- 7. DISPLAY COMPANIES BASED ON MAXIMUM SALARY CONDITION
--    Example: Companies having maximum salary greater than 60000
-- ============================================================

SELECT company, MAX(salary) AS Maximum_Salary
FROM Employee
GROUP BY company
HAVING MAX(salary) > 60000;


-- ============================================================
-- 8. RETRIEVE TOTAL EMPLOYEES BASED ON SALARY AND LOCATION
--    Example: Salary greater than 50000 and location is Pune
-- ============================================================

SELECT COUNT(*) AS Total_Employees
FROM Employee
WHERE salary > 50000
AND location = 'Pune';


-- ============================================================
-- 9. DISPLAY EMPLOYEE DETAILS BASED ON SALARY AND LOCATION
-- ============================================================

SELECT *
FROM Employee
WHERE salary > 50000
AND location = 'Pune';


-- ============================================================
-- END OF PROGRAM
-- ============================================================

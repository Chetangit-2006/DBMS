
#PostgreSQL SQL Programs
-- Retrieve Employee Name and Salary Using AND Condition
//Select employee name and salary
SELECT name, salary

// Select data from the employee table
FROM emp

//Apply both conditions:
//1. Age should be less than or equal to 26
//2. Salary should be greater than or equal to 33000
WHERE age <= 26 AND salary >= 33000;

//Expected Output:
Amit   34000
Sneha  33000






//Retrieve Employee Details Using LIKE Operator
//Select all columns from the employee table
SELECT *
//Select data from the employee table
FROM emp

// Display employees whose name starts with 'A'
//'%' represents any number of characters after A
WHERE name LIKE 'A%';

//Expected Output:
102  Anita  Patil  F  28  Mumbai  2020-03-10  35000
 103  Amit   Verma  M  24  Nagpur  2022-01-05  34000




// Retrieve Employee Details Using IN Operator
//Select all employee details
SELECT *

//Select data from the employee table
FROM emp

//Display employees whose age is either 25 or 27
WHERE age IN (25, 27);

// Expected Output:
101  Rahul  Sharma  M  25  Pune  2021-06-15  32000





// Retrieve Employee Details Using BETWEEN Operator
//Select all employee details
SELECT *

//Select data from the employee table
FROM emp

//Display employees whose age is between 25 and 27
//BETWEEN includes both the starting and ending values
WHERE age BETWEEN 25 AND 27;

//Expected Output:
101  Rahul  Sharma    M  25  Pune    2021-06-15  32000
104  Sneha  Kulkarni  F  26  Nashik  2021-11-20  33000



-- ============================================================
-- EXPERIMENT 7
-- Retrieve Employees by Age or Salary Condition
-- ============================================================

-- Select all employee details
SELECT *

-- Select data from the employee table
FROM emp

-- Apply either of the following conditions:
-- 1. Age should be less than 30
-- 2. Salary should be less than 35000
WHERE age < 30 OR salary < 35000;


-- Expected Output:
-- 101  Rahul  Sharma    M  25  Pune    2021-06-15  32000
-- 102  Anita  Patil     F  28  Mumbai  2020-03-10  35000
-- 103  Amit   Verma     M  24  Nagpur  2022-01-05  34000
-- 104  Sneha  Kulkarni  F  26  Nashik  2021-11-20  33000



-- ============================================================
-- EXPERIMENT 8
-- Retrieve Employees Whose Names Start with R or S
-- ============================================================

-- Select all employee details
SELECT *

-- Select data from the employee table
FROM emp

-- Display employees whose name starts with either 'R' or 'S'
-- '%' represents any number of characters after R or S
WHERE name LIKE 'R%' OR name LIKE 'S%';


-- Expected Output:
-- 101  Rahul  Sharma    M  25  Pune        2021-06-15  32000
-- 104  Sneha  Kulkarni  F  26  Nashik      2021-11-20  33000
-- 105  Rohan  Deshmukh  M  30  Aurangabad  2019-08-12  38000

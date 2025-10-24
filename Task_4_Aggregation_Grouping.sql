-- Task 4: Aggregate Functions and grouping
-- Creating a sample table
CREATE TABLE employees (
    emp_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    department TEXT,
    salary INTEGER,
    hire_date DATE
);

INSERT INTO employees (emp_id, first_name, last_name, department, salary, hire_date) VALUES
(1, 'Amit', 'Sharma', 'IT', 60000, '2020-02-10'),
(2, 'Sneha', 'Patel', 'Finance', 55000, '2019-06-15'),
(3, 'Ravi', 'Kumar', 'IT', 70000, '2021-01-22'),
(4, 'Priya', 'Reddy', 'HR', 45000, '2020-10-01'),
(5, 'Kiran', 'Singh', 'Finance', 65000, '2018-03-05'),
(6, 'Rahul', 'Nair', 'IT', 50000, '2022-07-30');


SELECT * FROM employees;

-- 1. Total Salary Paid to All Employees
SELECT SUM(salary) AS total_salary
FROM employees;

-- 2. Find the average salary in each department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- 3. Count the number of employees in each department
SELECT department, COUNT(emp_id) AS total_employees
FROM employees
GROUP BY department;

-- 4. Find departments where the average salary is greater than 55,000
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 55000;

-- 5. Find the maximum and minimum salaries per department
SELECT department, 
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary
FROM employees
GROUP BY department;










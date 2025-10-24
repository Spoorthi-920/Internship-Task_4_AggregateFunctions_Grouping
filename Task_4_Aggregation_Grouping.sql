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










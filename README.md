# Internship Task 4 - SQL Aggregate Functions & Grouping

## Overview
This repository contains SQL exercises for **Internship Task 4**, focusing on **aggregate functions and grouping**.  
It demonstrates how to summarize and analyze data using:

- `SUM`  
- `AVG`  
- `COUNT`  
- `MAX` / `MIN`  
- `GROUP BY`  
- `HAVING`  

These queries help in deriving meaningful insights from tabular data.


## Dataset
A sample **employees** table is used for practice:

| emp_id | first_name | last_name | department | salary | hire_date   |
|--------|------------|-----------|------------|--------|------------|
| 1      | Amit       | Sharma    | IT         | 60000  | 2020-02-10 |
| 2      | Sneha      | Patel     | Finance    | 55000  | 2019-06-15 |
| 3      | Ravi       | Kumar     | IT         | 70000  | 2021-01-22 |
| 4      | Priya      | Reddy     | HR         | 45000  | 2020-10-01 |
| 5      | Kiran      | Singh     | Finance    | 65000  | 2018-03-05 |
| 6      | Rahul      | Nair      | IT         | 50000  | 2022-07-30 |

The dataset is included in the SQL script, so it can be **created and used directly**.


## SQL Queries
The `task4_aggregation_grouping.sql` file includes examples of:

- Calculating total salary:  
  `SELECT SUM(salary) AS total_salary FROM employees;`  

- Finding average salary by department:  
  `SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department;`  

- Counting employees per department:  
  `SELECT department, COUNT(emp_id) AS total_employees FROM employees GROUP BY department;`  

- Filtering groups using `HAVING` (e.g., departments with avg salary > 55000):  
  ```sql
  SELECT department, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department
  HAVING AVG(salary) > 55000;
  ```

## Tools Used:
- **MySQL Workbench** –  for creating and querying MySQL databases


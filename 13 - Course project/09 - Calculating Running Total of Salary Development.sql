-- Task 9: Write a query to calculate the running total of salary development ordered by start_date.
-- Query:
SELECT 
    emp_id,
    salary,
    start_date,
    SUM(salary) OVER(ORDER BY start_date) AS total_salary
FROM 
    employees;

/* Explanation:
- This query selects emp_id, salary, and start_date columns from the employees table.
- It calculates the running total of salary development using the SUM() window function ordered by start_date.
- The result provides a running total of salary development for each employee, ordered by start_date.
*/




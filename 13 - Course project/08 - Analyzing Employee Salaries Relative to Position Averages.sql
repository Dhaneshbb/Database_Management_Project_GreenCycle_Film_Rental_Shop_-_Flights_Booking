-- Task 8.1: Write a query to return employee information along with the average salary for each job position.
-- Query:
SELECT
    emp_id,
    first_name,
    last_name,
    position_title,
    salary,
    ROUND(AVG(salary) OVER(PARTITION BY position_title), 2) AS avg_position_salary
FROM 
    employees
ORDER BY 
    emp_id;

/* Explanation:
- This query selects emp_id, first_name, last_name, position_title, and salary columns from the employees table.
- It also calculates the average salary for each job position using the AVG() window function partitioned by position_title.
- The result is ordered by emp_id.
*/

-- Task 8.2: Write a query to count the number of people earning less than their average position salary.
-- Query:
SELECT
    COUNT(*) AS num_people
FROM (
    SELECT 
        emp_id,
        salary,
        ROUND(AVG(salary) OVER(PARTITION BY position_title), 2) AS avg_pos_salary
    FROM 
        employees
) AS subquery
WHERE 
    salary < avg_pos_salary;

/* Explanation:
- This query first calculates the average salary for each job position using the AVG() window function partitioned by position_title.
- It then counts the number of employees whose salary is less than their average position salary.
- The result directly shows the number of people earning less than their average position salary.
*/

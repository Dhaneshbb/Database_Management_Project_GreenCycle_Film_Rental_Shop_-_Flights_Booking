-- Task 11.1: Output the top earner per position_title including first_name and position_title and their salary.
-- Query:
SELECT
    first_name,
    position_title,
    salary
FROM 
    employees e1
WHERE 
    salary = (
        SELECT MAX(salary)
        FROM employees e2
        WHERE e1.position_title = e2.position_title
    );

/* Explanation:
- This query selects the first_name, position_title, and salary columns from the employees table.
- It filters the results to only include rows where the salary matches the maximum salary for that position_title.
- This effectively selects the top earner per position_title.
*/

-- Task 11.2: Add the average salary per position_title.
-- Query:
SELECT
    first_name,
    position_title,
    salary,
    (
        SELECT ROUND(AVG(salary), 2) as avg_in_pos
        FROM employees e3
        WHERE e1.position_title = e3.position_title
    ) as avg_salary
FROM 
    employees e1
WHERE 
    salary = (
        SELECT MAX(salary)
        FROM employees e2
        WHERE e1.position_title = e2.position_title
    );

/* Explanation:
- This query extends the previous one by including the average salary per position_title using a subquery.
- The subquery calculates the average salary for each position_title.
- The main query selects first_name, position_title, salary, and includes the average salary obtained from the subquery.
*/

-- Task 11.3: Remove employees with the same salary as the average salary of their position_title.
-- Query:
SELECT
    first_name,
    position_title,
    salary,
    (
        SELECT ROUND(AVG(salary), 2) as avg_in_pos
        FROM employees e3
        WHERE e1.position_title = e3.position_title
    ) as avg_salary
FROM 
    employees e1
WHERE 
    salary = (
        SELECT MAX(salary)
        FROM employees e2
        WHERE e1.position_title = e2.position_title
    )
    AND salary <> (
        SELECT ROUND(AVG(salary), 2) as avg_in_pos
        FROM employees e3
        WHERE e1.position_title = e3.position_title
    );

/* Explanation:
- This query further extends the previous one by filtering out employees whose salary matches the average salary of their position_title.
- It adds an additional condition to the WHERE clause to exclude such cases.
*/

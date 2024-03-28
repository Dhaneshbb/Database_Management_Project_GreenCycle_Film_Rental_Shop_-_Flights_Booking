-- Task 14: Query to return the top earner of each department
-- Query:
SELECT * FROM
(
    SELECT
        emp_id,
        position_title,
        department,
        salary,
        RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS rank
    FROM 
        employees
    NATURAL LEFT JOIN 
        departments
) a
WHERE 
    rank = 1;

/* Explanation:
This query retrieves emp_id, position_title, department, salary, and rank for each employee. It assigns a rank to each employee's salary within their department, filtering to include only the top earner in each department.
*/

-- to check Which employee (emp_id) is the top earner in the department Finance?

SELECT emp_id
FROM
(
    SELECT
        emp_id,
        RANK() OVER(PARTITION BY department_id ORDER BY salary DESC) AS rank
    FROM 
        employees
    WHERE
        department_id = (SELECT department_id FROM departments WHERE department = 'Finance')
) top_earners
WHERE 
    rank = 1;


-- Task 13: Query to return all employees with their position_title, department, salary, and rank partitioned by department
-- Query:
SELECT
    emp_id,
    position_title,
    department,
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC)
FROM 
    employees
NATURAL LEFT JOIN 
    departments;

/* Explanation:
This query retrieves emp_id, position_title, department, salary, and rank for each employee. It assigns a rank to each employee's salary within their department using the RANK() function and orders them in descending salary order. The PARTITION BY department ensures separate ranking within each department. It joins the employees and departments tables using NATURAL LEFT JOIN based on the common department_id column.
*/

-- to check employee (emp_id) who holds rank 7 in the department Analytics,

SELECT
    emp_id
FROM (
    SELECT
        emp_id,
        RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS salary_rank
    FROM 
        employees
    NATURAL LEFT JOIN 
        departments
    WHERE
        department = 'Analytics'
) AS ranked_employees
WHERE
    salary_rank = 7;

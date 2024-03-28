-- Task 12: Query to return all meaningful aggregations grouped by division, department, and position_title
-- Query:
SELECT 
    division,
    department,
    position_title,
    SUM(salary) AS total_salary,
    COUNT(*) AS num_employees,
    ROUND(AVG(salary), 2) AS avg_salary
FROM 
    employees
NATURAL JOIN 
    departments
GROUP BY 
    ROLLUP(division, department, position_title)
ORDER BY 
    1, 2, 3;

/* Explanation:
- This query calculates various aggregations (sum of salary, number of employees, and average salary) for all meaningful combinations of division, department, and position_title.
- It uses the ROLLUP function to generate subtotals and grand totals for the specified groupings.
- The NATURAL JOIN is used to join the employees and departments tables based on the common department_id column.
- The GROUP BY clause groups the results by the specified columns.
- The ORDER BY clause sorts the results by division, department, and position_title.
*/

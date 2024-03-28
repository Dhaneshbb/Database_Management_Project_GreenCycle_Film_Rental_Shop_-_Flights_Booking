-- Task 7: Write a query to return the average salaries per division.
-- Query:
SELECT 
    division,
    ROUND(AVG(salary), 2) AS average_salary
FROM 
    employees e
LEFT JOIN 
    departments d ON e.department_id = d.department_id
GROUP BY 
    division
ORDER BY 
    average_salary;

/* Explanation:
- This query calculates the average salary per division by joining the employees table with the departments table based on the department_id.
- It uses the AVG() function to calculate the average salary for each division.
- The ROUND() function is used to round the average salary to two decimal places.
- The result is grouped by the division and ordered by the average_salary.
*/

-- to check

SELECT 
    division,
    ROUND(AVG(salary), 2) AS average_salary
FROM 
    employees e
LEFT JOIN 
    departments d ON e.department_id = d.department_id
GROUP BY 
    division
ORDER BY 
    average_salary
	LIMIT 1;
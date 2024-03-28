-- Task 6: Write a query to calculate the average salaries for each position title.

-- Query:
SELECT 
    position_title,
    ROUND(AVG(salary), 2) AS average_salary
FROM 
    v_employees_info
GROUP BY 
    position_title
ORDER BY 
    2;

/* Explanation:
- This query calculates the average salary for each position title.
- It selects the position_title column from the v_employees_info view and calculates the rounded average salary for each position using the AVG() and ROUND() functions.
- The result is grouped by position_title using the GROUP BY clause.
- Finally, the result is sorted by the average salary in ascending order.
*/

-- to check
SELECT 
    ROUND(AVG(salary), 2) AS average_salary
FROM 
    v_employees_info
WHERE 
    position_title = 'Software Engineer';
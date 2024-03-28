-- Task 10: Create a running total considering the fact that people were leaving the company.
-- Query:
SELECT 
    start_date,
    SUM(salary) OVER(ORDER BY start_date)
FROM (
    SELECT 
        emp_id,
        salary,
        start_date
    FROM 
        employees
    UNION 
    SELECT 
        emp_id,
        -salary,
        end_date
    FROM 
        v_employees_info
    WHERE 
        is_active ='false'
    ORDER BY 
        start_date
) a;

/* Explanation:
This query computes the running total of salaries for both active and inactive employees by combining data from the employees table and a view using a UNION. It calculates the total salary considering both active and inactive employees and orders the results by start_date.
*/



-- tp check Calculate the total salary after 2018-12-31.

SELECT 
    SUM(salary) 
FROM (
    SELECT 
        salary
    FROM 
        employees
    WHERE 
        start_date > '2018-12-31'
    UNION 
    SELECT 
        -salary
    FROM 
        v_employees_info
    WHERE 
        is_active ='false' 
        AND end_date > '2018-12-31'
) a;

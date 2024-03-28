-- Task 5.1: Write a query to add columns for manager and is_active.
-- Query:
SELECT 
    emp.*,
    CASE 
        WHEN emp.end_date IS NULL THEN 'true'
        ELSE 'false' 
    END AS is_active,
    mng.first_name || ' ' || mng.last_name AS manager
FROM 
    employees emp
LEFT JOIN 
    employees mng ON emp.manager_id = mng.emp_id;

/* Explanation:
This query selects all columns from the employees table and adds two new columns: "manager" and "is_active". It determines the value of "is_active" using a CASE statement based on the presence of an end_date. The manager's name is retrieved by joining the employees table with itself, and it's concatenated using the first_name and last_name columns of the manager.
*/


-- Task 5.2: Create a view called v_employees_info from the previous query.
-- Query:
CREATE VIEW v_employees_info AS
SELECT 
    emp.*,
    CASE 
        WHEN emp.end_date IS NULL THEN 'true'
        ELSE 'false' 
    END AS is_active,
    mng.first_name || ' ' || mng.last_name AS manager
FROM 
    employees emp
LEFT JOIN 
    employees mng ON emp.manager_id = mng.emp_id;

/* Explanation:
- This query creates a view named v_employees_info.
- The view is based on the previous query that adds the manager and is_active columns to the employees data.
- The view contains the same columns as the result of the previous query.
- Now users can query the view v_employees_info to retrieve the employee information along with the manager's name and the employee's active status.
*/

-- To check the view v_employees_info:
SELECT * FROM v_employees_info;

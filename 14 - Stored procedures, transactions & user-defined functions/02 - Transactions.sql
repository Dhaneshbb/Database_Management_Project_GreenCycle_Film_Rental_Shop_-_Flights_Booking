-- Task: Perform a transaction to update the salary and position title of employees.
-- Query:
BEGIN;

UPDATE employees
SET 
    salary = 12587.00,
    position_title = 'Head of Sales'
WHERE 
    emp_id = 2;

UPDATE employees
SET 
    salary = 14614.00,
    position_title = 'Head of Bi'
WHERE 
    emp_id = 3;

COMMIT;

/* Explanation:
This query begins a transaction using BEGIN;, followed by updates to the employees table for two employees. The first update sets the salary to 12587.00 and position title to 'Head of Sales' for emp_id = 2, while the second update sets the salary to 14614.00 and position title to 'Head of Bi' for emp_id = 3. Once both updates are executed, the transaction is committed using COMMIT;.
*/

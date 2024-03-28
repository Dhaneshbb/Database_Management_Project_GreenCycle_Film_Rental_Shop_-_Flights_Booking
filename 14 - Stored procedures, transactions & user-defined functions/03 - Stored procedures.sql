-- Task: Create a stored procedure called emp_swap that swaps the position and salary of two employees.
-- Test the stored procedure with emp-id 2 and 3.
-- Stored Procedure Definition:
CREATE OR REPLACE PROCEDURE emp_swap (
    emp1 INT,
    emp2 INT
)
LANGUAGE plpgsql
AS 
$$
DECLARE
    emp1_position VARCHAR;
    emp2_position VARCHAR;
    emp1_salary NUMERIC;
    emp2_salary NUMERIC;
BEGIN
    -- Retrieve position and salary of emp1
    SELECT position_title, salary 
    INTO emp1_position, emp1_salary
    FROM employees
    WHERE emp_id = emp1;
    
    -- Retrieve position and salary of emp2
    SELECT position_title, salary 
    INTO emp2_position, emp2_salary
    FROM employees
    WHERE emp_id = emp2;
    
    -- Update emp1 with emp2's position and salary
    UPDATE employees 
    SET position_title = emp2_position,
        salary = emp2_salary
    WHERE emp_id = emp1;
    
    -- Update emp2 with emp1's position and salary
    UPDATE employees 
    SET position_title = emp1_position,
        salary = emp1_salary
    WHERE emp_id = emp2;
END;
$$;

-- Test the stored procedure with emp-id 2 and 3
CALL emp_swap(2, 3);


-- Verification Query: Check the position and salary after swapping
SELECT emp_id, position_title, salary 
FROM employees 
WHERE emp_id IN (2, 3);

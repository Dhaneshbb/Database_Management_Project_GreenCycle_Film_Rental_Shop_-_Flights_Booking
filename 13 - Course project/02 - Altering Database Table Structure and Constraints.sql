-- Task 2: Alter the employees table according to the specified requirements.
-- Query:
ALTER TABLE employees 
    ALTER COLUMN department_id SET NOT NULL,
    ALTER COLUMN start_date SET DEFAULT CURRENT_DATE,
    ADD COLUMN end_date DATE,
    ADD CONSTRAINT birth_check CHECK(birth_date < CURRENT_DATE);

ALTER TABLE employees
    RENAME COLUMN job_position TO position_title;

/* Explanation:
The ALTER TABLE statements modify the structure of the table. They ensure the department_id column is mandatory and add a default value for start_date. A new end_date column is added, and a birth_check constraint prevents future birth dates. Finally, the job_position column is renamed to position_title.
*/


-- to check
SELECT * FROM employees;

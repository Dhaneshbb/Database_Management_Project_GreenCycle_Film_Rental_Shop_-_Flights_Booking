
-- Task 1.1: Create the "employees" table with NOT NULL constraints.

CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    job_position VARCHAR(20) NOT NULL,
    salary NUMERIC(8,2),
    start_date DATE NOT NULL,
    birth_date DATE NOT NULL,
    store_id INT,
    department_id INT,
    manager_id INT
);

/* Explanation:
- The "employees" table is created with the specified columns and constraints.
- The columns "first_name", "last_name", "job_position", "start_date", and "birth_date" have NOT NULL constraints to ensure these fields are always populated.
- Other columns such as "emp_id" are defined with appropriate data types and constraints.
*/ 


-- Additional Task: Create a table called departments with specified columns and constraints.
-- Query:
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department VARCHAR NOT NULL,
    division VARCHAR NOT NULL
);

/* Explanation:
- This query creates a table named departments with the specified columns and data types.
- NOT NULL constraints are applied to the department and division columns to ensure they are always populated.
- The department_id column is set as the primary key with a SERIAL data type, which auto-increments.
- This table can be used to store information about different departments within the company.
*/

--to check 
SELECT * FROM employees
SELECT * FROM departments
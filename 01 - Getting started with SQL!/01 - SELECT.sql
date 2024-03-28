-- Task: Write a SQL query to retrieve a list of all customers' first name, last name, and email address.

-- Query 1: Retrieve all columns for all customers
SELECT 
* 
FROM customer;

-- Query 2: Retrieve specific columns (first_name, last_name, email) for all customers
SELECT first_name, last_name, email
FROM customer;


/*Explanation:
- Query 1 retrieves all columns (`*`) from the `customer` table, providing comprehensive information about each customer.
- Query 2 retrieves only specific columns (`first_name`, `last_name`, `email`) from the `customer` table, fulfilling the Marketing Manager's request for first name, last name, and email address of all customers.
*/
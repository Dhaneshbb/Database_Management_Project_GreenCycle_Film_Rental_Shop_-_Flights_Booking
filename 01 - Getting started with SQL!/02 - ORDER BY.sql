-- Task: retrieve a list of all customers' first name, last name, and email address, ordered by last name and then by first name.

-- Query: 

SELECT first_name, last_name, email
FROM customer
ORDER BY last_name DESC, first_name DESC;


/* Explanation:
- This query selects the specified columns (first_name, last_name, email) from the customer table.
- It orders the results by last name in descending order (from "Z" to "A").
- In case of the same last name, it further orders the results by first name in descending order.
*/
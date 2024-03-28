-- Task: determine the number of distinct last names among customers.

-- Query: 

SELECT COUNT(DISTINCT last_name)
FROM customer;


/* Explanation:
- This query uses the COUNT() function to count the number of distinct last names in the customer table.
- It ensures that each last name is only counted once, regardless of how many times it appears in the table.
*/
-- Task 1: Determine the number of payments made by the customer with customer ID - ICO.

-- Task 2: Retrieve the last name of the customer with the first name 'ERICA'.

-- Task: Determine the number of payments made by the customer with customer ID - ICO.
-- Query:
SELECT COUNT(*)
FROM payment
WHERE customer_id = '100';

/* Explanation:
- This query counts the number of payments made by the customer with the specified customer ID.
*/

-- Task: Retrieve the last name of the customer with the first name 'ERICA'.
-- Query:
SELECT first_name ,
last_name
FROM customer
WHERE first_name = 'ERICA';

/* Explanation:
- This query retrieves the last name of the customer whose first name is 'ERICA'.
*/
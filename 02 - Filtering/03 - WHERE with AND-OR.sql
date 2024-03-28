-- Task: Retrieve a list of payments for customers 322, 346, and 354 with amounts either less than $2 or greater than $10, ordered by customer ID first (ascending) and then by amount (descending).
-- Query:

SELECT payment_id, 
customer_id, 
amount
FROM payment
WHERE 
(customer_id = 322 or customer_id = 346 or customer_id = 354)
AND 
(amount < 2 OR amount > 10)
ORDER BY customer_id ASC, amount DESC;

/*
Explanation:
- The SELECT statement retrieves the payment_id, customer_id, and amount columns from the payment table.
- The WHERE clause filters the rows where the customer_id is either 322, 346, or 354, and the amount is either less than $2 or greater than $10.
- The ORDER BY clause sorts the results first by customer_id in ascending order and then by amount in descending order.
*/
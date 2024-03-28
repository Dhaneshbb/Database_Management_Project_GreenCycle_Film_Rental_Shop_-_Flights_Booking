-- Challenge: Retrieve different prices paid, ordered from highest to lowest.

-- Query:

--SELECT *
--FROM payment;


SELECT DISTINCT payment_amount
FROM payments
ORDER BY payment_amount DESC;


/* Explanation:
- This query selects distinct payment amounts from the payments table.
- It orders the results by payment amount in descending order, from highest to lowest.
*/


-- Task: Write a SQL query to create a list of all the distinct districts customers are from.

-- Query: Retrieve distinct districts from the customer table

SELECT DISTINCT 
district
FROM address;


/* Explanation:
- This query selects the distinct values from the 'district' column of the address table.
- It ensures that each district appears only once in the result set, eliminating duplicate entries.
*/
-- Task 1: Count the number of rentals that have not been returned yet.
-- Query:
SELECT COUNT(*)
FROM rental
WHERE return_date IS NULL;

/* Explanation:
- This query counts the number of rentals where the return_date is null, indicating that they have not been returned yet.
*/

-- Task 2: Retrieve a list of payments with an amount less than or equal to $2, including payment_id and amount.
-- Query:
SELECT 
payment_id, 
amount
FROM payment
WHERE amount <= 2
ORDER BY amount DESC;
/* Explanation:
- This query retrieves the payment_id and amount for payments where the amount is less than or equal to $2.
- The results are ordered by amount in descending order.
*/
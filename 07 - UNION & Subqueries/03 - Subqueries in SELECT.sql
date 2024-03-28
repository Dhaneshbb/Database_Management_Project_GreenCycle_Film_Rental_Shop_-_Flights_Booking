-- Task: Show all payments with the difference between each payment amount and the maximum payment amount.
-- Query:
SELECT 
    *,
    (SELECT MAX(amount) FROM payment) - amount AS difference_from_max
FROM 
    payment;

/* Explanation:
- This query retrieves all payments and calculates the difference between each payment amount and the maximum payment amount in the payment table.
- The subquery (SELECT MAX(amount) FROM payment) calculates the maximum payment amount.
- Then, for each payment, the difference between its amount and the maximum amount is calculated.
*/

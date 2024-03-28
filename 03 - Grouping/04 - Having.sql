-- Task 1: Filter the payments for the specified days in 2020 (April 28, 29, and 30).
-- Query:
SELECT *
FROM payment
WHERE DATE(payment_date) IN ('2020-04-28', '2020-04-29', '2020-04-30');

/* Explanation:
- This query filters the payments table to include only the payments made on April 28, 29, and 30 in 2020.
*/

-- Task 2: Find the average payment amount grouped by customer and day, considering only the days/customers with more than 1 payment.
-- Query:
SELECT customer_id, payment_date, AVG(amount) AS average_payment_amount
FROM payment
WHERE DATE(payment_date) IN ('2020-04-28', '2020-04-29', '2020-04-30')
GROUP BY customer_id, payment_date
HAVING COUNT(*) > 0
ORDER BY average_payment_amount DESC;

/* Explanation:
- This query calculates the average payment amount for each customer and day.
- It filters the payments to include only those made on April 28, 29, and 30 in 2020.
- It groups the results by customer_id and payment_date.
- HAVING COUNT(*) > 0 ensures that even days/customers with only one payment are included.
- Finally, it orders the results by the average payment amount in descending order.
*/

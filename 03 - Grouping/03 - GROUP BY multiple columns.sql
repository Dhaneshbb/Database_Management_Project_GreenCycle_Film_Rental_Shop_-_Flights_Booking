
-- Task 1: Determine which employee had the highest sales amount in a single day.
-- Query:
SELECT staff_id, SUM(amount) AS total_sales_amount
FROM payment
WHERE amount > 0
GROUP BY staff_id, payment_date
ORDER BY total_sales_amount DESC
LIMIT 1;

/* Explanation:
- This query calculates the total sales amount for each employee by summing the amounts of payments with a positive amount.
- It groups the results by staff_id and payment_date to find sales amount for each employee on each day.
- Then, it orders the results by total sales amount in descending order.
- Finally, it selects the top row to find the employee with the highest sales amount in a single day.
*/

-- Task 2: Determine which employee had the most sales transactions in a single day (not counting payments with amount = 0).
-- Query:
SELECT staff_id, COUNT(*) AS total_sales_transactions
FROM payment
WHERE amount > 0
GROUP BY staff_id, payment_date
ORDER BY total_sales_transactions DESC
LIMIT 1;

/* Explanation:
- This query counts the number of sales transactions for each employee, excluding payments with an amount of 0.
- It groups the results by staff_id and payment_date to count the number of sales transactions for each employee on each day.
- Then, it orders the results by the total number of sales transactions in descending order.
- Finally, it selects the top row to find the employee with the most sales transactions in a single day.
*/


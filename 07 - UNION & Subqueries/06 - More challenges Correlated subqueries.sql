-- Task: Show all payments with the total amount for every customer as well as the number of payments of each customer.
-- Query:
SELECT 
    payment_id,
    customer_id,
    staff_id,
    amount,
    (SELECT SUM(amount) FROM payment p2 WHERE p1.customer_id = p2.customer_id) AS total_amount,
    (SELECT COUNT(amount) FROM payment p2 WHERE p1.customer_id = p2.customer_id) AS count_payments
FROM 
    payment p1
ORDER BY 
    customer_id, amount DESC;

/* Explanation:
- This query retrieves all payments and adds columns for the total amount and number of payments for each customer.
- Correlated subqueries are used to calculate the total amount and payment count for each customer.
- The results are ordered by customer_id and amount in descending order.
*/

-- Task: Show only those films with the highest replacement costs in their rating category plus show the average replacement cost in their rating category.
-- Query:
SELECT 
    title,
    replacement_cost,
    rating,
    (SELECT AVG(replacement_cost) FROM film f2 WHERE f1.rating = f2.rating) AS avg_replacement_cost
FROM 
    film f1
WHERE 
    replacement_cost = (SELECT MAX(replacement_cost) FROM film f3 WHERE f1.rating = f3.rating);

/* Explanation:
- This query retrieves films with the highest replacement costs in their rating category and adds a column for the average replacement cost in their rating category.
- Correlated subqueries are used to calculate the average replacement cost for each rating category.
*/

-- Task: Show only those payments with the highest payment for each customer's first name including the payment_id of that payment.
-- Query:
SELECT 
    first_name,
    amount,
    payment_id
FROM 
    payment p1
INNER JOIN 
    customer c ON p1.customer_id = c.customer_id
WHERE 
    amount = (SELECT MAX(amount) FROM payment p2 WHERE p1.customer_id = p2.customer_id);

/* Explanation:
- This query retrieves payments with the highest payment for each customer's first name, including the payment_id.
- Correlated subqueries are used to identify the maximum payment amount for each customer.
- The results are filtered to include only payments with the highest amount.
*/

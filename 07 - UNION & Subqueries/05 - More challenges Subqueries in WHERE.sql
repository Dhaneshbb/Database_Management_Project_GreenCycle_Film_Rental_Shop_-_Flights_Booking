-- Task: Return all customers' first names and last names that have made a payment on '2020-01-25'.
-- Query:
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (SELECT customer_id
					  FROM payment
					  WHERE DATE(payment_date) = '2020-01-25');

/* Explanation:
- This query selects customers' first names and last names who made a payment on '2020-01-25'.
- It uses a subquery to find customer IDs from the payment table where the payment date matches '2020-01-25'.
*/

-- Task: Return all customers' first names and email addresses that have spent more than $30.
-- Query:
SELECT first_name, email
FROM customer
WHERE customer_id IN (SELECT customer_id
					  FROM payment
					  GROUP BY customer_id
					  HAVING SUM(amount) > 30);

/* Explanation:
- This query selects customers' first names and email addresses who have spent more than $30.
- It uses a subquery to find customer IDs from the payment table where the total amount spent by each customer is greater than $30.
*/

-- Task: Return all customers' first and last names from California who have spent more than $100 in total.
-- Query:
SELECT first_name, last_name
FROM customer
WHERE customer_id IN (SELECT customer_id
					  FROM payment
					  GROUP BY customer_id
					  HAVING SUM(amount) > 100)
AND customer_id IN (SELECT customer_id
					FROM customer
					INNER JOIN address
					ON address.address_id = customer.address_id
					WHERE district = 'California');

/* Explanation:
- This query selects customers' first and last names who are from California and have spent more than $100 in total.
- It uses two subqueries: one to find customer IDs with total spending greater than $100, and another to find customer IDs who are from California.
*/

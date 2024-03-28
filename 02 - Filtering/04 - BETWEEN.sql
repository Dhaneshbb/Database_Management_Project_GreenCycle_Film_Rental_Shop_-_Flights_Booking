-- Task: Determine the number of payments made on January 26th and 27th, 2020, with an amount between $1.99 and $3.99.
-- Query:

SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 1.99 AND 3.99
AND payment_date BETWEEN '2020-01-26' AND '2020-01-27';

/* Explanation:
- This query counts the number of payments made on January 26th and 27th, 2020, with an amount between $1.99 and $3.99.
- It filters the payments based on the payment_date column using the BETWEEN operator and the amount column using the BETWEEN operator.
*/

-- Task: Retrieve a list of the concerned payments.
-- Query:

SELECT *
FROM payment
WHERE customer_id IN (12, 25, 67, 93, 124, 234)
AND amount IN (4.99, 7.99, 9.99)
AND payment_date BETWEEN '2020-01-01' AND '2020-02-01';

/* Explanation:
- This query retrieves all columns (*) from the payment table for payments made by the customers with the specified customer IDs (12, 25, 67, 93, 124, 234) and with amounts $4.99, $7.99, or $9.99.
- It further filters the payments to include only those made between January 1st, 2020 and Feb 1st, 2020 using the payment_date column and the BETWEEN operator.
*/
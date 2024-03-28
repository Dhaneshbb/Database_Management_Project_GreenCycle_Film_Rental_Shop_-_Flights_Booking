
-- Task 1: Which employee is responsible for more payments?

SELECT staff_id, COUNT(*) AS total_payments
FROM payment
GROUP BY staff_id; 

/*
Explanation:
- We are selecting the staff_id and counting the number of payments each staff_id is responsible for.
- GROUP BY staff_id groups the results by staff_id, so we get a count of payments for each staff_id.
*/


-- Task 2: Which employee is responsible for a higher overall payment amount?

SELECT staff_id, SUM(amount) AS total_payment_amount
FROM payment
GROUP BY staff_id; 


/*
Explanation:
- We are selecting the staff_id and summing up the payment amounts for each staff_id.
- GROUP BY staff_id groups the results by staff_id, so we get the total payment amount for each staff_id.
*/



-- Task 3: How do these amounts change if we don't consider amounts equal to 0?

SELECT staff_id, COUNT(*) AS total_payments_without_zero, SUM(amount) AS total_payment_amount_without_zero
FROM payment
WHERE amount <> 0
GROUP BY staff_id;

/*
Explanation:
- We are selecting the staff_id, counting the number of payments, and summing up the payment amounts for each staff_id, but only considering payments where the amount is not equal to 0.
- WHERE amount <> 0 filters out payments with amounts equal to 0.
- GROUP BY staff_id groups the results by staff_id, so we get the count and sum of payments for each staff_id without including payments with amounts equal to 0.
*/


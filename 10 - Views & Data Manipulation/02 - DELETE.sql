-- Task: Delete rows from the payment table with specific payment_id values.
-- Query:
DELETE FROM payment
WHERE payment_id IN (17064, 17067);

/* Explanation:
- The DELETE statement removes rows from the payment table where the payment_id matches either 17064 or 17067.
- This operation effectively deletes the payments associated with these payment_ids.
*/

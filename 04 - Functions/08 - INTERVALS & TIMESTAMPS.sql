-- Task: Create a list for the support team of all rental durations of customers with customer_id 35.
-- Query:
SELECT
    customer_id,
    return_date - rental_date AS rental_duration
FROM
    rental
WHERE
    customer_id = 35;

/* Explanation:
- This query selects the customer_id and calculates the rental duration by subtracting rental_date from return_date.
- It retrieves rental durations for customers with customer_id 35 from the rental table.
*/


-- Task: Find out for the support team which customer has the longest average rental duration.
-- Query:
SELECT
    customer_id,
    AVG(return_date - rental_date) AS rental_duration
FROM
    rental
GROUP BY
    customer_id
ORDER BY
    rental_duration DESC;

/* Explanation:
This query computes the average rental duration for each customer by subtracting the rental date from the return date. It then groups the results by customer ID and sorts them in descending order based on the average rental duration. Consequently, the customer with the longest average rental duration will be listed at the top.
*/


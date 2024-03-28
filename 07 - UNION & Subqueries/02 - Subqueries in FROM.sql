-- Task: Calculate the average total amount spent per day.
-- Query:
SELECT AVG(daily_revenue) AS average_daily_revenue
FROM (
    SELECT DATE(payment_date) AS payment_day, SUM(amount) AS daily_revenue
    FROM payment
    GROUP BY DATE(payment_date)
) AS daily_revenues;

/* Explanation:
- This query calculates the average daily revenue by summing up the total amount spent per day and then averaging it over all days.
*/

-- Task: Create a query to show the average daily revenue of all Sundays.
-- Query:
SELECT 
    AVG(total) AS avg_sunday_revenue
FROM 
    (SELECT
        SUM(amount) AS total,
        DATE(payment_date),
        EXTRACT(DOW FROM payment_date) AS weekday
    FROM 
        payment
    WHERE 
        EXTRACT(DOW FROM payment_date) = 0
    GROUP BY 
        DATE(payment_date), weekday) AS daily;

/* Explanation:
This query calculates the average daily revenue for Sundays by summing the revenue for each Sunday and then averaging the total Sunday revenues.
*/


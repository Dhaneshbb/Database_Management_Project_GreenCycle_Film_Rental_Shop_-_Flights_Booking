-- Task 1: Find the month with the highest total payment amount.
-- Query:
SELECT 
    EXTRACT(month FROM payment_date) AS _month,
    SUM(amount) AS total_payment_amount
FROM 
    payment
GROUP BY 
    _month
ORDER BY 
    total_payment_amount DESC;

/* Explanation:
- This query extracts the month from the payment_date and calculates the total payment amount for each month.
- It then groups the results by month and orders them by the total payment amount in descending order.
*/

-- Task 2: Find the day of the week with the highest total payment amount (0 is Sunday).
-- Query:
SELECT 
    EXTRACT(dow FROM payment_date) AS day_of_week,
    SUM(amount) AS total_payment_amount
FROM 
    payment
GROUP BY 
    day_of_week
ORDER BY 
    total_payment_amount DESC;

/* Explanation:
- This query extracts the day of the week (0 for Sunday, 1 for Monday, etc.) from the payment_date and calculates the total payment amount for each day of the week.
- It then groups the results by day_of_week and orders them by the total payment amount in descending order.
*/

-- Task 3: Find the highest amount one customer has spent in a week.
-- Query:
SELECT 
    customer_id,
    EXTRACT(week FROM payment_date) AS week,
    SUM(amount) AS total_payment_amount
FROM 
    payment
GROUP BY 
    week, customer_id
ORDER BY 
    total_payment_amount DESC;

/* Explanation:
- This query extracts the week number from the payment_date and calculates the total payment amount for each week and each customer.
- It then groups the results by week and customer_id and orders them by the total payment amount in descending order.
*/


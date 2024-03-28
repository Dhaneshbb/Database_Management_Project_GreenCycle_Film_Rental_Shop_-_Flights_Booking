-- Task: Write a query that returns the revenue of the day, the revenue of the previous day, the difference, and the percentage growth compared to the previous day.
-- Query:
SELECT 
    SUM(amount) AS revenue,
    DATE(payment_date) AS day,
    LAG(SUM(amount)) OVER (ORDER BY DATE(payment_date)) AS previous_day,
    SUM(amount) - LAG(SUM(amount)) OVER (ORDER BY DATE(payment_date)) AS difference,
    ROUND((SUM(amount) - LAG(SUM(amount)) OVER (ORDER BY DATE(payment_date))) / LAG(SUM(amount)) OVER (ORDER BY DATE(payment_date)) * 100, 2) AS percentage_growth
FROM 
    payment 
GROUP BY 
    DATE(payment_date);

/* Explanation:
This SQL query calculates the revenue of each day, alongside the revenue of the previous day, the difference between them, and the percentage growth compared to the previous day. It utilizes the LEAG function to fetch the revenue of the previous day and calculates the necessary metrics for each day's revenue data.
*/


-- Task: Write a query that calculates a booking amount rollup for the hierarchy of quarter, month, week in month, and day.
-- Query:
SELECT 
    CONCAT('Q', TO_CHAR(book_date, 'Q')) AS quarter,
    EXTRACT('Month' from book_date) AS month,
    TO_CHAR(book_date, 'W') AS week_in_month,
    DATE(book_date) AS day,
    SUM(total_amount)
FROM 
    bookings 
GROUP BY 
    ROLLUP(quarter, month, week_in_month, day)
ORDER BY 
    1, 2, 3, 4;

/* Explanation:
- The query selects the quarter, month, week in month, and day from the book_date column.
- It calculates the sum of the total_amount.
- Using ROLLUP in the GROUP BY clause enables the calculation of subtotal and grand total rows for the specified hierarchy levels.
- The results are ordered by quarter, month, week in month, and day.
*/

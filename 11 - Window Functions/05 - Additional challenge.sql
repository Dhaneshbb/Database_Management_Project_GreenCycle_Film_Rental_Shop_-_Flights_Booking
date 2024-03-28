-- Task: Write a query to calculate the share of revenue each staff_id makes per customer.
-- Query:
SELECT 
    first_name,
    last_name,
    CASE WHEN staff_id IS NULL THEN '[null]' ELSE CAST(staff_id AS VARCHAR) END AS staff_id,
    SUM(amount) AS total,
    ROUND(100 * SUM(amount) / SUM(SUM(amount)) OVER (PARTITION BY first_name, last_name), 2) AS percentage
FROM 
    customer c 
LEFT JOIN 
    payment p ON c.customer_id = p.customer_id
GROUP BY
    GROUPING SETS((first_name, last_name), (first_name, last_name, staff_id));

/* Explanation:
This SQL query calculates the revenue share each staff member earns from each customer's payments. It computes the total revenue per customer and then determines the percentage of revenue attributed to each staff member. The result includes the customer's first and last names, the staff ID (with NULL values replaced by '[null]'), the total revenue, and the revenue percentage.
*/


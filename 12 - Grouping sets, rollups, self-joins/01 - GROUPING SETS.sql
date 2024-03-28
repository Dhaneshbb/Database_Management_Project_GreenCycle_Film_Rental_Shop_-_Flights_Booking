-- Task: Write a query that returns the sum of the amount for each customer (first name and last name) and each staff_id. Also, add the overall revenue per customer.
-- Query:
SELECT
    first_name,
    last_name,
    staff_id,
    SUM(amount) AS total_amount
FROM 
    customer AS c 
LEFT JOIN 
    payment AS p ON c.customer_id = p.customer_id
GROUP BY 
    GROUPING SETS (
        (first_name, last_name),
        (first_name, last_name, staff_id)
    );

/* Explanation:
- The query selects customer names and staff_id from the customer table.
- It calculates the sum of the payment amount.
- Using LEFT JOIN ensures all customers are included.
- GROUP BY with GROUPING SETS enables grouping by different combinations of columns.
- SUM(amount) calculates the total amount for each group.
*/

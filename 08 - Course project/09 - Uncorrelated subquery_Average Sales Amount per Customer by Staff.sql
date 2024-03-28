-- Task: Create a list of the average sales amount each staff_id has per customer.
-- Query:
SELECT 
    staff_id,
    AVG(total_sales_amount_per_customer) AS avg_sales_per_customer
FROM 
    (SELECT 
        staff_id,
        customer_id,
        SUM(amount) AS total_sales_amount_per_customer
    FROM 
        payment
    GROUP BY 
        staff_id, customer_id) AS subquery
GROUP BY 
    staff_id
ORDER BY 
    avg_sales_per_customer DESC
LIMIT 1;

/* Explanation:
- This query calculates the average sales amount each staff_id has per customer.
- It uses an uncorrelated subquery to first calculate the total sales amount per customer for each staff_id.
- The inner subquery calculates the total sales amount per customer for each staff_id using GROUP BY.
- Then, the outer query calculates the average of these total sales amounts for each staff_id.
- Results are grouped by staff_id.
- Finally, results are ordered by the average sales per customer in descending order, and the LIMIT 1 clause selects the staff_id with the highest average revenue per customer.
*/
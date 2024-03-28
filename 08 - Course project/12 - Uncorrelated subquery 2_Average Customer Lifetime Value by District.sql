-- Task: Create a list of the average customer lifetime value grouped by district.
-- Query:
SELECT 
    a.district,
    AVG(total_spent) AS avg_lifetime_value
FROM 
    address a
JOIN 
    customer c ON a.address_id = c.address_id
JOIN 
    (
        SELECT 
            customer_id,
            SUM(amount) AS total_spent
        FROM 
            payment
        GROUP BY 
            customer_id
    ) AS customer_payments ON c.customer_id = customer_payments.customer_id
GROUP BY 
    a.district
ORDER BY 
    avg_lifetime_value DESC
LIMIT 1;

/* Explanation:
- This query calculates the average customer lifetime value for each district.
- It joins the address, customer, and payment tables to associate customers with their districts and total spent amounts.
- An uncorrelated subquery is used to calculate the total spent amount for each customer.
- Results are grouped by district, and the average customer lifetime value is calculated using the AVG() function.
- Results are ordered by average customer lifetime value in descending order.
- The LIMIT 1 clause selects the district with the highest average customer lifetime value.
*/
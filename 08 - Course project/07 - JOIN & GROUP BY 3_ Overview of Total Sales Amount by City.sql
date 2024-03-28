-- Task: Create an overview of cities and the total sales amount that occurred in each city.
-- Query:
SELECT 
    ci.city,
    SUM(p.amount) AS total_sales_amount
FROM 
    city ci
JOIN 
    address a ON ci.city_id = a.city_id
JOIN 
    customer c ON a.address_id = c.address_id
JOIN 
    payment p ON c.customer_id = p.customer_id
GROUP BY 
    ci.city
ORDER BY 
    total_sales_amount DESC
LIMIT 1;

/* Explanation:
- This query retrieves the cities and calculates the total sales amount that occurred in each city.
- It joins the city, address, customer, and payment tables to associate cities with sales transactions.
- Results are grouped by city using GROUP BY.
- The total sales amount in each city is calculated using the SUM() function.
- Results are ordered by the total sales amount in descending order, and the LIMIT 1 clause selects the city with the highest sales.
*/
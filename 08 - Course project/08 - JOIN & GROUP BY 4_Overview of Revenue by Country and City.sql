-- Task: Create an overview of revenue grouped by "country, city".
-- Query:
SELECT 
    CONCAT(co.country, ', ', ci.city) AS country_city,
    SUM(p.amount) AS total_sales_amount
FROM 
    city ci
JOIN 
    country co ON ci.country_id = co.country_id
JOIN 
    address a ON ci.city_id = a.city_id
JOIN 
    customer cu ON a.address_id = cu.address_id
JOIN 
    payment p ON cu.customer_id = p.customer_id
GROUP BY 
    country_city
ORDER BY 
    total_sales_amount ASC
LIMIT 1;

/* Explanation:
This query summarizes revenue by "country, city" format, joining tables to associate cities with countries and transactions. It groups results accordingly, calculates total sales using SUM(), and orders them. Finally, it selects the country and city with the least sales using LIMIT 1.
*/
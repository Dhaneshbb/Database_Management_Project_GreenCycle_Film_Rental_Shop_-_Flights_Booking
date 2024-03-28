-- Task: Return the customers' name, the country, and the number of payments they have using the existing view customer_list.
-- Query:
SELECT 
    name,
    country,
    COUNT(*) AS count,
    RANK() OVER (PARTITION BY country ORDER BY COUNT(*) DESC) AS rank
FROM 
    customer_list
    LEFT JOIN payment ON id = customer_id 
GROUP BY 
    name, country;

/* Explanation:
This query selects customers' names, countries, and counts their payments. It joins the customer_list view with the payment table and groups results by name and country. Customers are ranked within each country based on payment count using the RANK() function.
*/

-- Task: Filter the results to only the top 3 customers per country.
-- Query:
SELECT * FROM 
(
    SELECT 
        name,
        country,
        COUNT(*),
        RANK() OVER (PARTITION BY country ORDER BY COUNT(*) DESC) AS rank
    FROM 
        customer_list
    LEFT JOIN 
        payment ON id = customer_id 
    GROUP BY 
        name, country
) AS a 
WHERE 
    rank BETWEEN 1 AND 3;

/* Explanation:
- This query filters the results from the previous query to only include the top 3 customers per country.
- It uses a subquery to filter the results based on the rank column, which represents the ranking of customers within each country.
- The results are filtered to include only the ranks between 1 and 3.
*/

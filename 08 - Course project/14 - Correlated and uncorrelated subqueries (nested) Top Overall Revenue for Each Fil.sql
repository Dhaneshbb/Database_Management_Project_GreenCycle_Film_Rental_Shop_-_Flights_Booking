-- Task: Create a list of the top overall revenue for each film title in each category.
-- Query:
SELECT 
    title,
    name,
    SUM(amount) as total
FROM 
    payment p
LEFT JOIN 
    rental r ON r.rental_id=p.rental_id
LEFT JOIN 
    inventory i ON i.inventory_id=r.inventory_id
LEFT JOIN 
    film f ON f.film_id=i.film_id
LEFT JOIN 
    film_category fc ON fc.film_id=f.film_id
LEFT JOIN 
    category c ON c.category_id=fc.category_id
GROUP BY 
    name,title
HAVING 
    SUM(amount) = (
        SELECT 
            MAX(total)
        FROM 
            (
                SELECT
                    title,
                    name,
                    SUM(amount) as total
                FROM 
                    payment p
                LEFT JOIN 
                    rental r ON r.rental_id=p.rental_id
                LEFT JOIN 
                    inventory i ON i.inventory_id=r.inventory_id
                LEFT JOIN 
                    film f ON f.film_id=i.film_id
                LEFT JOIN 
                    film_category fc ON fc.film_id=f.film_id
                LEFT JOIN 
                    category c1 ON c1.category_id=fc.category_id
                GROUP BY 
                    name,title
            ) sub
        WHERE 
            c.name=sub.name
    );

/* Explanation:
- This query retrieves a list of the top overall revenue for each film title in each category.
- It uses a subquery to calculate the maximum revenue for each category.
- The outer query then filters the results to include only the rows where the total revenue equals the maximum revenue for the respective category.
- Results are grouped by category name and film title, and the total revenue is calculated using the SUM() function.
- The HAVING clause ensures that only the rows with the maximum revenue for each category are selected.
*/
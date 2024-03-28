-- Task: Create a list of payments including payment_id, amount, and film category name, along with the total revenue for each category.
-- Query:
SELECT 
    p.payment_id,
    p.amount,
    c.name AS category_name,
    (SELECT SUM(amount) FROM payment p2 JOIN rental r ON p2.rental_id = r.rental_id JOIN inventory i ON r.inventory_id = i.inventory_id JOIN film_category fc ON i.film_id = fc.film_id WHERE fc.category_id = c.category_id) AS total_category_revenue
FROM 
    payment p
JOIN 
    rental r ON p.rental_id = r.rental_id
JOIN 
    inventory i ON r.inventory_id = i.inventory_id
JOIN 
    film_category fc ON i.film_id = fc.film_id
JOIN 
    category c ON fc.category_id = c.category_id
WHERE 
    c.name = 'Action'
ORDER BY 
    c.name ASC, p.payment_id ASC
LIMIT 1;

/* Explanation:
- This query retrieves a list of payments including payment_id, amount, and film category name, along with the total revenue for each category.
- It uses an uncorrelated subquery to calculate the total revenue for the 'Action' category.
- Results are filtered to include only payments related to the 'Action' category.
- Results are ordered first by category name in ascending order, and then by payment_id in ascending order as the secondary criterion.
- The LIMIT 1 clause ensures only the first row is returned, which represents the category 'Action'.
*/
-- Task: Write a query that returns all grouping sets in all combinations of customer_id, date, and title with the aggregation of the payment amount.
-- Query:
SELECT 
    p.customer_id,
    DATE(payment_date) AS date,
    f.title,
    SUM(amount) AS total
FROM 
    payment p
LEFT JOIN 
    rental r ON r.rental_id = p.rental_id
LEFT JOIN 
    inventory i ON i.inventory_id = r.inventory_id
LEFT JOIN 
    film f ON f.film_id = i.film_id
GROUP BY 
    CUBE(p.customer_id, DATE(payment_date), f.title)
ORDER BY 
    1, 2, 3;

/* Explanation:
- The query selects the customer_id, date (payment_date), and title from the payment, rental, inventory, and film tables.
- It calculates the sum of the payment amount.
- Using CUBE in the GROUP BY clause enables the generation of all possible combinations of customer_id, date, and title.
- The results are ordered by customer_id, date, and title to match the desired output format.
*/

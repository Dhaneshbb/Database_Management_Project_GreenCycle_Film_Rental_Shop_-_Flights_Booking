-- Task 1: Retrieve movie details along with the average length of movies in each category.
-- Query:
SELECT 
    f.film_id,
    title,
    name AS category,
    length AS length_of_movie,
    ROUND(AVG(length) OVER (PARTITION BY name), 2) AS avg_length_in_category
FROM 
    film f
    LEFT JOIN film_category fc ON f.film_id = fc.film_id
    LEFT JOIN category c ON fc.category_id = c.category_id 
ORDER BY 
    f.film_id;

/* Explanation:
- This query retrieves movie details such as film ID, title, category, and length.
- It also calculates the average length of movies in each category using the OVER() clause with PARTITION BY.
- The results are ordered by film ID.
*/


-- Task 2: Retrieve payment details along with the count of payments made by each customer and the payment amount.
-- Query:
SELECT 
    *,
    COUNT(*) OVER (PARTITION BY amount, customer_id) AS num_payments_by_customer
FROM 
    payment
ORDER BY 
    customer_id;

/* Explanation:
- This query retrieves all payment details along with additional information.
- It calculates the count of payments made by each customer for each amount using the OVER() clause with PARTITION BY.
- The results are ordered by customer ID.
*/

-- Task: Show movie titles, film IDs, and replacement costs with the lowest replacement costs for each rating category.
-- Query:
SELECT 
    film_id, title, replacement_cost, rating
FROM 
    film f1
WHERE 
    replacement_cost = (
        SELECT 
            MIN(replacement_cost)
        FROM 
            film f2
        WHERE 
            f1.rating = f2.rating
    );

/* Explanation:
This query retrieves movie titles, film IDs, and replacement costs for movies with the lowest replacement costs in each rating category, using a correlated subquery to find the minimum replacement cost for each category.
*/

-- Task: Show movie titles, film IDs, and lengths that have the highest length in each rating category.
-- Query:
SELECT 
    film_id, title, length, rating
FROM 
    film f1
WHERE 
    length = (
        SELECT 
            MAX(length)
        FROM 
            film f2
        WHERE 
            f1.rating = f2.rating
    );

/* Explanation:
This query retrieves movie titles, film IDs, and lengths for movies with the highest length in each rating category. It utilizes a correlated subquery to find the maximum length for each category, filtering the outer query to match these maximum lengths.
*/

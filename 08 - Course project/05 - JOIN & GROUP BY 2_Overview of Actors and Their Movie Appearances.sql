-- Task: Create an overview of the actors' first and last names and how many movies they appear in.
-- Query:
SELECT 
    a.first_name || ' ' || a.last_name AS actor_name,
    COUNT(*) AS num_movies
FROM 
    actor a
JOIN 
    film_actor fa ON a.actor_id = fa.actor_id
GROUP BY 
    actor_name
ORDER BY 
    num_movies DESC;

/* Explanation:
This query combines actors' names into "actor_name" and counts the number of movies each actor appears in. It joins actor and film_actor tables, groups results by actor_name, counts movie appearances, orders them by count in descending order, and selects the actor with the most movies using LIMIT 1.
*/

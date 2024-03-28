-- Task: Select films with length longer than the average length of all films.
-- Query:
SELECT *
FROM film
WHERE length > (SELECT AVG(length) FROM film);

/* Explanation:
- This query selects films with a length longer than the average length of all films.
- It uses a subquery to calculate the average length of all films and compares it with the length of each film in the main query.
*/

-- Task: Select films available in store 2 more than 3 times.
-- Query:
SELECT * 
FROM film
WHERE film_id IN 
    (SELECT film_id 
     FROM inventory 	
     WHERE store_id = 2
     GROUP BY film_id
     HAVING COUNT(*) > 3);

/* Explanation:
- This query selects films available in store 2 more than 3 times.
- It uses a subquery to find the film IDs from the inventory table where the store ID is 2 and the count of occurrences of each film ID is more than 3.
*/


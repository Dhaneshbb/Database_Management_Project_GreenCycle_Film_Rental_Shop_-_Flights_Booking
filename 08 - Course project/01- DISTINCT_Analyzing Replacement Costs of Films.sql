-- Task: Create a list of all the different replacement costs of the films.
-- Query:
SELECT DISTINCT replacement_cost
FROM film 
ORDER BY 1;

/* Explanation:
- This query retrieves all distinct replacement costs of the films.
- The DISTINCT keyword ensures that each unique replacement cost is returned only once in the result set.
*/

-- Additional query to find the lowest replacement cost:
SELECT MIN(replacement_cost) AS lowest_replacement_cost
FROM film;

/* Explanation:
- This additional query calculates the lowest replacement cost among all films.
- The MIN() function is used to find the minimum value among the replacement costs.

-- Task: Find all the pairs of films with the same length.
-- Query:
SELECT 
    f1.title AS title,
    f2.title AS title2,
    f1.length AS length
FROM 
    film f1
JOIN 
    film f2 ON f1.length = f2.length
WHERE 
    f1.title <> f2.title
ORDER BY 
    length DESC;

/* Explanation:
- This query performs a self-join on the film table to find pairs of films with the same length.
- It selects the titles of the films and their lengths.
- The WHERE clause ensures that the titles of the films are different.
- Finally, the results are ordered by length in descending order.
*/

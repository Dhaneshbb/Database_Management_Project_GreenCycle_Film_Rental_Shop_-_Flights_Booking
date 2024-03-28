-- Task: Create a list of movies longer than the average length in each replacement cost group.
-- Query:
SELECT 
    f1.title,
    f1.length
FROM 
    film f1
WHERE 
    f1.length > (
        SELECT 
            AVG(f2.length)
        FROM 
            film f2
        WHERE 
            f1.replacement_cost = f2.replacement_cost
    )
ORDER BY 
    f1.length ASC;

/* Explanation:
- This query selects movies with lengths longer than the average length in each replacement cost group.
- It uses a correlated subquery to calculate the average length of movies with the same replacement cost as the current movie.
- Results are ordered by length in ascending order.
*/
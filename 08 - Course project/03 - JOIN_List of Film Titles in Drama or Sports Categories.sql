-- Task: Create a list of film titles including title, length, and category name ordered by length descendingly, filtering only 'Drama' or 'Sports' category films.
-- Query:
SELECT 
    f.title, 
    f.length, 
    c.name AS category_name
FROM 
    film f
JOIN 
    film_category fc ON f.film_id = fc.film_id
JOIN 
    category c ON fc.category_id = c.category_id
WHERE 
    c.name IN ('Drama', 'Sports')
ORDER BY 
    f.length DESC
	LIMIT 1;

/* Explanation:
- This query retrieves film titles, lengths, and category names from the film, film_category, and category tables.
- It joins these tables to associate films with their categories.
- Results are filtered to include only films in the 'Drama' or 'Sports' categories using the WHERE clause.
- The results are ordered by film length in descending order.
*/

-- Task: Create a view "films_category" that displays film titles, lengths, and category names for movies in 'Action' and 'Comedy'.
-- Query:
CREATE VIEW films_category AS
SELECT 
    title,
    name AS category_name,
    length
FROM 
    film f
LEFT JOIN 
    film_category fc ON f.film_id = fc.film_id
LEFT JOIN 
    category c ON c.category_id = fc.category_id
WHERE 
    name IN ('Action', 'Comedy')
ORDER BY 
    length DESC;

/* Explanation:
- This creates a view named "films_category" to display film titles, category names, and lengths.
- It joins the "film" table with the "film_category" and "category" tables to retrieve the category names.
- Filters the results to include only films in the 'Action' and 'Comedy' categories using the WHERE clause.
- Orders the results by length in descending order.
*/

-- to check
SELECT * FROM films_category;

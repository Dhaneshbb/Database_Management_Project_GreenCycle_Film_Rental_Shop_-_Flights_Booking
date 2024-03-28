-- Task: Create an overview of how many movies (titles) there are in each category (name).
-- Query:
SELECT 
    c.name AS category_name,
    COUNT(f.title) AS num_titles
FROM 
    category c
JOIN 
    film_category fc ON c.category_id = fc.category_id
JOIN 
    film f ON fc.film_id = f.film_id
GROUP BY 
    c.name
ORDER BY 
    num_titles DESC;

/* Explanation:
- This query retrieves the category name and counts the number of titles in each category.
- It joins the category, film_category, and film tables to associate categories with films.
- Results are grouped by category name using GROUP BY.
- The number of titles in each category is counted using the COUNT() function.
- Results are ordered by the number of titles in descending order to identify the most common category.

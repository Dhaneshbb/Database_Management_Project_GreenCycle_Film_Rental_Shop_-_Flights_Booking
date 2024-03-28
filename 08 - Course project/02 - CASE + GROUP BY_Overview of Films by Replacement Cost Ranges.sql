-- Task: Write a query to give an overview of films with replacement costs in different cost ranges.
-- Query:
SELECT 
    CASE 
        WHEN replacement_cost BETWEEN 9.99 AND 19.99 THEN 'low'
        WHEN replacement_cost BETWEEN 20.00 AND 24.99 THEN 'medium'
        WHEN replacement_cost BETWEEN 25.00 AND 29.99 THEN 'high'
    END AS cost_range,
    COUNT(*) AS num_films
FROM 
    film
GROUP BY 
    cost_range;

/* Explanation:
- This query categorizes films into different cost ranges using a CASE statement based on their replacement costs.
- It then counts the number of films in each cost range using the COUNT(*) function.
- The result is grouped by the cost ranges.
*/

-- Additional query to find the number of films in the "low" group:
SELECT 
    COUNT(*) AS num_films_low
FROM 
    film
WHERE 
    replacement_cost BETWEEN 9.99 AND 19.99;

/* Explanation:
- This additional query directly counts the number of films with replacement costs in the "low" range.
- It filters films based on their replacement costs falling between 9.99 and 19.99.

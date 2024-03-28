-- Task: Find out how many flights have departed in each season.
-- Query:
SELECT 
    CASE 
        WHEN EXTRACT(month FROM scheduled_departure) IN (12, 1, 2) THEN 'Winter'
        WHEN EXTRACT(month FROM scheduled_departure) IN (3, 4, 5) THEN 'Spring'
        WHEN EXTRACT(month FROM scheduled_departure) IN (6, 7, 8) THEN 'Summer'
        WHEN EXTRACT(month FROM scheduled_departure) IN (9, 10, 11) THEN 'Fall'
    END AS season,
    COUNT(*) AS num_flights
FROM 
    flights
GROUP BY 
    season;

/* Explanation:
- This query categorizes flights into seasons based on their departure months using the CASE WHEN statement.
- It checks the month extracted from the departure_date column and assigns a season accordingly.
- The COUNT(*) function counts the number of flights in each season.
- The result is grouped by the season.
*/


-- Task: Filter movies into tiers based on specific criteria.
-- Query:
SELECT 
    film_id,
    CASE 
        WHEN rating IN ('PG', 'PG-13') OR length > 210 THEN 'Great rating or long (tier 1)'
        WHEN description LIKE '%Drama%' AND length > 90 THEN 'Long drama (tier 2)'
        WHEN description LIKE '%Drama%' AND length <= 90 THEN 'Short drama (tier 3)'
        WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
    END AS tier
FROM 
    film
WHERE 
    CASE 
        WHEN rating IN ('PG', 'PG-13') OR length > 210 THEN 'Great rating or long (tier 1)'
        WHEN description LIKE '%Drama%' AND length > 90 THEN 'Long drama (tier 2)'
        WHEN description LIKE '%Drama%' AND length <= 90 THEN 'Short drama (tier 3)'
        WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
    END IS NOT NULL;

/* Explanation:
This query categorizes movies into tiers using the CASE WHEN statement, evaluating specific criteria for each movie. It assigns the highest tier based on the conditions met. Tiers are defined according to given instructions. The result contains film_id and the assigned tier. The WHERE clause filters movies appearing in one of the four tiers by checking if the tier is not null.
*/


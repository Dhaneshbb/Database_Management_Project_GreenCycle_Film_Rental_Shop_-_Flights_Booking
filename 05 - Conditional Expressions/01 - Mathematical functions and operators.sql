-- Task: Create a list of films with rental rates less than 4% of replacement costs.
-- Query:
SELECT film_id, ROUND((rental_rate / replacement_cost) * 100, 2) AS increase_prices
FROM film
WHERE rental_rate < replacement_cost * 0.04
ORDER BY 2;

/* Explanation:
This query retrieves film_id and computes the percentage relationship between the rental rate and replacement cost. It filters films where the rental rate is less than 4% of the replacement cost. The percentage calculation is achieved by dividing the rental rate by the replacement cost and multiplying by 100. The ROUND() function is used to round the percentage to 2 decimal places. Lastly, the results are sorted by the calculated percentage using the ORDER BY clause.
*/

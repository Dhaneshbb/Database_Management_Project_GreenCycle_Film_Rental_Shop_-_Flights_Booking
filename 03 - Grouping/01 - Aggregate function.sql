
-- Task: Retrieve the Minimum, Maximum, Average (rounded), and Sum of the replacement cost of the films.
-- Query:

SELECT
MIN(replacement_cost),
MAX(replacement_cost),
ROUND (AVG(replacement_cost), 2) AS AVG, 
SUM(replacement_cost)
FROM film;

/* Explanation:
- This query calculates the minimum, maximum, rounded average, and sum of the replacement cost of the films.
- MIN(), MAX(), and SUM() functions are used to find the minimum, maximum, and sum of the replacement cost respectively.
- AVG() function calculates the average of the replacement cost, and ROUND() function is used to round it to two decimal places.
*/
-- 1. Create a list of distinct districts customers are from.
SELECT DISTINCT
district
FROM address;

/* 
Explanation:
- This query retrieves distinct districts from the address table.
- Using DISTINCT ensures that each district appears only once in the result set.
*/

-- 2. What is the latest rental date?
SELECT 
rental_date
FROM rental
ORDER BY rental_date DESC
LIMIT 1;

/* 
Explanation:
- This query retrieves the rental_date column from the rental table.
- It orders the results in descending order based on rental_date.
- LIMIT 1 ensures that only the latest rental date is returned.
*/

-- 3. How many films does the company have?
SELECT 
COUNT(*)
FROM film;

/* 
Explanation:
- This query counts the number of rows (films) in the film table.
- COUNT(*) counts all rows in the table.
*/

-- 4. How many distinct last names of the customer are there?
SELECT
COUNT(DISTINCT last_name)
FROM customer;

/* 
Explanation:
- This query counts the number of distinct last names in the customer table.
- Using COUNT(DISTINCT last_name) ensures that each last name is counted only once.
*/

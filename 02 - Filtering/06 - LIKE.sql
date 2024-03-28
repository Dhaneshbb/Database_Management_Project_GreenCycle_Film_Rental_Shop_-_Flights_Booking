
-- Task: Retrieve the count of movies with 'Documentary' in the description using the LIKE operator.
-- Query:

SELECT COUNT(*)
FROM film
WHERE description LIKE '%Documentary%';

/* Explanation:
- This query counts the number of movies in the film table where the description contains the word 'Documentary'.
- The LIKE operator with the '%' wildcard is used to match any string containing 'Documentary'.
*/

-- Task: Retrieve the count of customers with a 3-letter first name and an 'X' or 'Y' as the last letter in the last name using the LIKE operator.
-- Query:

SELECT COUNT(*)
FROM customer
WHERE first_name LIKE '___'
AND (last_name LIKE '%X' OR last_name LIKE '%Y');

/* Explanation:
- This query counts the number of customers in the customer table with a first name that is 3 letters long and an 'X' or 'Y' as the last letter in the last name.
- The LIKE operator with '___' pattern is used to match any 3-letter first name.
- The LIKE operator with '%X' and '%Y' patterns is used to match last names ending with 'X' or 'Y'.
*/
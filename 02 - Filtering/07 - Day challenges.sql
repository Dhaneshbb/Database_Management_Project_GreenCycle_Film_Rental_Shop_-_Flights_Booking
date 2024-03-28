
-- Task: Count the number of movies containing 'Saga' in the description and where the title starts with 'A' or ends with 'R'.
-- Query:
SELECT 
COUNT(*) AS no_of_movies
FROM film
WHERE description LIKE '%Saga%'
AND (title LIKE 'A%' 
OR title LIKE '%R');

/*
Explanation:
- This query counts the number of movies in the film table where the description contains the word 'Saga'.
- It further filters the movies based on the title using the LIKE operator to match titles that start with 'A' or end with 'R'.
- The COUNT(*) function is used to count the number of rows returned, and the result is aliased as 'no_of_movies' for clarity.
*/

-- Task: Retrieve a list of all customers whose first name contains 'ER' and has 'A' as the second letter in their first name. Order the results by last name in descending order.
-- Query:

SELECT 
*
FROM customer
WHERE first_name LIKE '%ER%' 
AND first_name LIKE '_A%'
ORDER BY last_name DESC;

/*
Explanation:
- This query retrieves all columns (*) from the customer table.
- It filters the customers based on their first names using the LIKE operator to match those containing 'ER' and having 'A' as the second letter (using '_A%' pattern).
- The results are ordered by last name in descending order.
*/

-- Task: Count the number of payments where the amount is either 0 or between 3.99 and 7.99, and occurred between 2020-05-01 and 2020-05-02.
-- Query:

SELECT 
COUNT(*)
FROM payment
WHERE (amount = 0 
OR amount BETWEEN 3.99 AND 7.99)
AND payment_date BETWEEN '2020-05-01' AND '2020-05-02';

/*
Explanation:
- This query counts the number of payments in the payment table.
- It filters the payments based on the amount using the OR condition to include payments where the amount is either 0 or between 3.99 and 7.99.
- Additionally, it filters the payments based on the payment_date, restricting them to occur on 2020-05-01 TO 2020-05-02.
*/

-- Task: Count the number of distinct last names of the customers.
-- Query:

SELECT 
COUNT(DISTINCT last_name)
FROM customer;

/*
Explanation:
- This query counts the number of distinct last names in the customer table using the COUNT() function combined with the DISTINCT keyword.
- It ensures that each last name is counted only once, regardless of how many times it appears in the table.
*/
-- Task: determine the total number of films the company has.

-- Query:

SELECT
COUNT(*)
FROM film

/* Explanation:
- This query uses the COUNT() function to count the number of film in the film table.
- It ensures that each film is only counted once, regardless of how many times it appears in the table.
*/
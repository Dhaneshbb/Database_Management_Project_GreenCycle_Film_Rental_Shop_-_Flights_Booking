-- Task: Find customers with first names or last names more than 10 characters long and output their names and emails in all lowercase.
-- Query:
SELECT LOWER(first_name) AS lower_first_name,
       LOWER(last_name) AS lower_last_name,
       LOWER(email) AS lower_email
FROM customer
WHERE LENGTH(first_name) > 10 OR LENGTH(last_name) > 10;

/* Explanation:
This query retrieves the lowercase versions of the first name, last name, and email columns from the customer table. It filters records where either the length of the first name or last name exceeds 10 characters using the WHERE clause. The LOWER() function ensures uniformity by converting names to lowercase as specified.
*/

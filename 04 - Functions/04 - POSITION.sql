-- Task: Extract the first name from the email address and concatenate it with the last name.
-- Query:
SELECT
last_name || ',' || LEFT(email, POSITION('.' IN email) - 1) AS full_name,
last_name
FROM
customer;

/* Explanation:
This query fetches the last name column from the customer table. It extracts characters from the email address until the '.' character using the LEFT() and POSITION() functions. Then, it concatenates the last name with the extracted first name, separated by a comma, resulting in full names formatted as "Last name, First name".
*/

-- Task: Extract the last 5 characters of the email address and extract just the dot '.' from the email address.
-- Query:
SELECT
email,
LEFT(RIGHT(email, 4), 1) AS dot_extraction
FROM
customer;

/* Explanation:
This query retrieves the email column from the customer table. It extracts the last 5 characters of each email using the RIGHT() function. Then, it selects the first character from this result, which should be the dot '.' from the email address, using the LEFT() function. The output includes the email addresses along with the extracted dot '.'.
*/

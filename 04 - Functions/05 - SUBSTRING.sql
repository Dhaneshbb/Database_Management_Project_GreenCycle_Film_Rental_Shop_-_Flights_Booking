-- Task: Create an anonymized form of the email addresses.
-- Query:
SELECT 
    CONCAT(
        LEFT(email, 1),
        '***',
        SUBSTRING(email FROM POSITION('.' IN email) - 1 FOR 1),
        '***',
        SUBSTRING(email FROM POSITION('@' IN email))
    ) AS anonymized_email
FROM 
    customer;

/* Explanation:
- This query selects the email column from the customer table.
- It creates an anonymized form by extracting the first character, characters before and after the dot '.', and the part starting from '@'.
*/

-- Task: Create an anonymized form of the email addresses.
-- Query:
SELECT 
    CONCAT(
        '***',
        SUBSTRING(email FROM POSITION('.' IN email) - 1 FOR 3),
        '***',
        SUBSTRING(email FROM POSITION('@' IN email))
    ) AS anonymized_email
FROM 
    customer;

/* Explanation:
- This query selects the email column from the customer table.
- It creates an anonymized form by replacing characters before and after the dot '.' with '***' and keeping the part starting from '@'.
*/


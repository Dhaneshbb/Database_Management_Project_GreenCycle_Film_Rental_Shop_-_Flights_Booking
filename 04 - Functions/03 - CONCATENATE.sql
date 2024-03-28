-- Task: Create an anonymized version of the email addresses.
-- Query:
SELECT
LEFT(email, 1) || '***' || RIGHT(email, 19) AS anonymized_email
FROM
customer;

/* Explanation:
email addresses by keeping the first character intact, replacing the middle part with '', and preserving the domain. It does so by extracting the first character using LEFT() function, adding '', and extracting the domain using RIGHT(). This ensures confidentiality while maintaining the structure of the email addresses.
*/

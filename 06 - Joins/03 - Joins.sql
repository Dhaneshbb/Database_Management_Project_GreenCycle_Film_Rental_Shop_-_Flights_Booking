-- Task: Retrieve the first name, last name, phone number, and district of customers located in Texas.
-- Query:
SELECT 
    c.first_name,
    c.last_name,
    a.phone,
    a.district
FROM 
    address a
JOIN 
    customer c ON c.address_id = a.address_id
WHERE 
    a.district = 'Texas';

/* Explanation:
- This query retrieves the first name, last name, phone number, and district of customers located in Texas.
- It joins the customer table with the address table on the address_id column to link customer information with their addresses.
- The WHERE clause filters the results to only include customers from the 'Texas' district.
- The phone number is retrieved from the address table since the error suggests that the "phone" column does not exist in the "customer" table.
*/

-- Task: Identify old addresses that are not related to any customer.
-- Query:
SELECT 
    a.*
FROM 
    address a
LEFT JOIN 
    customer c ON c.address_id = a.address_id
WHERE 
    c.customer_id IS NULL;

/* Explanation:
- This query retrieves all records from the address table that are not associated with any customer.
- It performs a LEFT JOIN between the address table and the customer table on the address_id column to identify unmatched addresses.
- The WHERE clause filters the results to only include addresses where the customer_id is null, indicating they are not related to any customer.
*/

-- Task: Create an overview of addresses not associated with any customer.
-- Query:
SELECT 
    COUNT(*) AS num_addresses_without_customers
FROM 
    address a
LEFT JOIN 
    customer c ON a.address_id = c.address_id
WHERE 
    c.address_id IS NULL;

/* Explanation:
- This query retrieves the count of addresses that are not associated with any customer.
- It performs a LEFT JOIN between the address and customer tables based on the address_id.
- The WHERE clause filters out the rows where the address_id in the customer table is NULL, indicating no associated customer.
- COUNT(*) function is used to count the number of such addresses.
*/
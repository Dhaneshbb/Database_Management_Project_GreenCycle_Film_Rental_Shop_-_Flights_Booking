-- Task: Retrieve first name, last name, email, and country for customers from Brazil.
-- Query:
SELECT 
    c.first_name,
    c.last_name,
    c.email,
    co.country
FROM 
    customer c
JOIN 
    address a ON c.address_id = a.address_id
JOIN 
    city ci ON a.city_id = ci.city_id
JOIN 
    country co ON ci.country_id = co.country_id
WHERE 
    co.country = 'Brazil';

/* Explanation:
- This query retrieves the first name, last name, email, and country for customers from Brazil.
- It joins the customer table with the address, city, and country tables to get the required information.
- The JOIN operations link the tables based on their respective foreign keys (address_id, city_id, country_id).
- The WHERE clause filters the results to only include customers from Brazil.
*/

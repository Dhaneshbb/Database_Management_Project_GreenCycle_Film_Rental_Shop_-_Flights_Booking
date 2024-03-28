--Create a view "v_customer_info" to display customer information along with address details:

CREATE VIEW v_customer_info
AS
SELECT cu.customer_id,
    cu.first_name || ' ' || cu.last_name AS name,
    a.address,
    a.postal_code,
    a.phone,
    city.city,
    country.country
     FROM customer cu
     JOIN address a ON cu.address_id = a.address_id
     JOIN city ON a.city_id = city.city_id
     JOIN country ON city.country_id = country.country_id
ORDER BY customer_id


-- Task 1: Rename the view to v_customer_information.
-- Query:
ALTER VIEW v_customer_info RENAME TO v_customer_information;

/* Explanation:
- The ALTER VIEW statement renames the existing view "v_customer_info" to "v_customer_information".
*/

-- Task 2: Rename the customer_id column to c_id.
-- Query:
ALTER VIEW v_customer_information RENAME COLUMN customer_id TO c_id;

/* Explanation:
- The ALTER VIEW statement renames the "customer_id" column in the view "v_customer_information" to "c_id".
*/

-- Task 3: Add the "initial" column as the third column to the view by replacing the view.
-- Query:
CREATE OR REPLACE VIEW v_customer_information AS
SELECT 
    cu.customer_id,
    cu.first_name || ' ' || cu.last_name AS name,
    cu.initials,
    a.address,
    a.postal_code,
    a.phone,
    city.city,
    country.country
FROM 
    customer cu
JOIN 
    address a ON cu.address_id = a.address_id
JOIN 
    city ON a.city_id = city.city_id
JOIN 
    country ON city.country_id = country.country_id
ORDER BY 
    customer_id;

/* Explanation:
- The CREATE OR REPLACE VIEW statement updates the existing view "v_customer_information".
- It selects the necessary columns and adds the "initials" column as the third column.
*/

-- to check 1,2,3 

SELECT * FROM v_customer_information;

SELECT c_id FROM v_customer_information;

SELECT * FROM v_customer_information;

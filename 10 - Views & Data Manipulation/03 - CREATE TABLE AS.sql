-- Task: Create a new table "customer_spendings" and populate it with total spending per customer.
-- Query:
CREATE TABLE customer_spendings AS
SELECT 
    first_name || ' ' || last_name AS name,
    SUM(amount) AS total_amount 
FROM 
    customer c 
LEFT JOIN 
    payment p 
ON 
    c.customer_id = p.customer_id
GROUP BY 
    first_name || ' ' || last_name;

-- Select all records from the newly created "customer_spendings" table
SELECT * FROM customer_spendings;

/* Explanation:
The CREATE TABLE AS statement creates "customer_spendings" based on the total spending calculated for each customer by joining "customer" and "payment" tables. The results, grouped by customer names, are then stored in the new table.
*/

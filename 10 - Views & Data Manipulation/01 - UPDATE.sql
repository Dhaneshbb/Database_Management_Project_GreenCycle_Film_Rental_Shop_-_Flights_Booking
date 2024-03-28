-- Task: Update rental rates and alter the customer table.
-- Query:

-- Update rental rates from 0.99 to 1.99 in the "film" table
UPDATE film
SET rental_rate = 1.99
WHERE rental_rate = 0.99;

-- Alter the customer table to add a new column "initials" of type VARCHAR(4)
ALTER TABLE customer
ADD COLUMN initials VARCHAR(4);

-- Update values in the "initials" column of the "customer" table
UPDATE customer
SET initials = CONCAT(LEFT(first_name, 1), '.', LEFT(last_name, 1));

/* Explanation:
1. The UPDATE statement modifies the rental rates from 0.99 to 1.99 in the "film" table.
2. The ALTER TABLE statement adds a new column "initials" of type VARCHAR(4) to the "customer" table.
3. The UPDATE statement populates the "initials" column with the first initials of the first and last names separated by a dot.
*/

-- to check
SELECT * FROM film
ORDER BY film_id
-- Task: Create a table named "director" with specific column definitions.
-- Query:
CREATE TABLE director (
    director_id SERIAL PRIMARY KEY,
    director_account_name VARCHAR(30) UNIQUE,
    first_name VARCHAR(50),
    last_name VARCHAR(50) DEFAULT 'Not specified' NOT NULL,
    date_of_birth DATE,
    address_id INT REFERENCES address(address_id)
);

/* Explanation:
creating a "director" table with columns for director details. It ensures uniqueness for the account name, sets a default value for the last name, and enforces a reference to an address.
*/

-- No SELECT statement since it's just the table creation. Use SELECT * FROM directors to view the table.
SELECT * FROM directors

-- Task: Alter the table "director" according to specific requirements.
-- Query:

ALTER TABLE director
ALTER COLUMN director_account_name TYPE VARCHAR(30);

ALTER TABLE director
ALTER COLUMN last_name DROP DEFAULT,
ALTER COLUMN last_name SET NOT NULL;

ALTER TABLE director
ADD COLUMN email VARCHAR(40);

ALTER TABLE director
RENAME COLUMN director_account_name TO account_name;

ALTER TABLE director
RENAME TO directors;


/* Explanation:
1. Change "director_account_name" to VARCHAR(30).
2. Remove DEFAULT constraint on "last_name" and set it as NOT NULL.
3. Add a new column "email" of VARCHAR(40).
4. Rename "director_account_name" to "account_name".
5. Rename the table "director" to "directors".
*/


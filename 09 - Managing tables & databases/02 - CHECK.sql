-- Task: Create a table called songs with specific constraints.
-- Query:
CREATE TABLE songs (
    song_id SERIAL PRIMARY KEY,
    song_name VARCHAR(30) NOT NULL,
    genre VARCHAR(30) DEFAULT 'Not defined',
    price NUMERIC CHECK (price >= 1.99),
    release_date DATE CONSTRAINT date_check CHECK (release_date BETWEEN '1950-01-01' AND CURRENT_DATE)
);

/* Explanation:
1. The table "songs" is created with constraints: "song_name" cannot be null, "genre" defaults to 'Not defined', "price" must be at least 1.99, and "release_date" must be between '1950-01-01' and the current date.
2. An attempt to insert a row violating these constraints will fail.
3. The constraint on "price" is modified to allow 0.99 as the lowest possible price.
*/

-- Attempt to insert a row:
INSERT INTO songs(song_name, price, release_date) VALUES ('SQL song', 0.99, '2022-07-01');

-- Modify the constraint to allow 0.99 as the lowest possible price:
ALTER TABLE songs
DROP CONSTRAINT songs_price_check;

ALTER TABLE songs
ADD CONSTRAINT songs_price_check CHECK (price >= 0.99);

-- to check
SELECT * FROM songs
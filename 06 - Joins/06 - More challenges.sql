-- Task: Find the passenger who spent the most in their bookings.
-- Query:
SELECT 
    passenger_name,
    SUM(total_amount) AS total_spent
FROM 
    tickets t
INNER JOIN 
    bookings b ON t.book_ref = b.book_ref
GROUP BY 
    passenger_name
ORDER BY 
    total_spent DESC
	limit 1;

/* Explanation:
- This query calculates the total amount spent by each passenger in their bookings.
- It joins the tickets and bookings tables based on the book_ref column.
- Results are grouped by passenger_name.
- The passenger who spent the most is determined by sorting the results in descending order of total amount spent.
*/

-- Task: Determine the fare condition used most by passenger ALEKSANDR IVANOV.
-- Query:
SELECT 
    passenger_name,
    fare_conditions,
    COUNT(*) AS frequency
FROM 
    tickets t
INNER JOIN 
    bookings b ON t.book_ref = b.book_ref
INNER JOIN 
    ticket_flights tf ON t.ticket_no = tf.ticket_no
WHERE 
    passenger_name = 'ALEKSANDR IVANOV'
GROUP BY 
    fare_conditions, passenger_name
ORDER BY 
    frequency DESC
LIMIT 1;

/* Explanation:
- This query counts the occurrences of each fare condition used by the passenger ALEKSANDR IVANOV.
- It joins the tickets, bookings, and ticket_flights tables to retrieve fare conditions associated with the passenger's bookings.
- The WHERE clause filters the results to only include bookings for the specified passenger.
- Results are grouped by fare_conditions and passenger_name.
- The frequency of each fare condition used by the passenger is counted.
*/

-- Task: Find the title rented most often by customer GEORGE LINTON.
-- Query:
SELECT 
    first_name,
    last_name,
    title,
    COUNT(*) AS rental_count
FROM 
    customer cu
INNER JOIN 
    rental re ON cu.customer_id = re.customer_id
INNER JOIN 
    inventory inv ON inv.inventory_id = re.inventory_id
INNER JOIN 
    film fi ON fi.film_id = inv.film_id
WHERE 
    first_name = 'GEORGE' AND last_name = 'LINTON'
GROUP BY 
    title, first_name, last_name
ORDER BY 
    rental_count DESC
	LIMIT 1;

/* Explanation:
- This query counts how many times customer GEORGE LINTON rented each film title.
- It joins the customer, rental, inventory, and film tables to retrieve film titles associated with the customer's rentals.
- Results are grouped by title, first_name, and last_name.
- The rental_count column calculates the number of times each title was rented by the customer.
*/

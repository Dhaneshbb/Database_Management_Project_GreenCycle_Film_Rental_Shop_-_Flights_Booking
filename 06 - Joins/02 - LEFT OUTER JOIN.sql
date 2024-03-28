-- Task: Find the most popular seats, including those that have never been booked, and determine which line has been chosen most frequently.
-- Query:
SELECT
    s.seat_no,
    COUNT(b.seat_no) AS num_bookings
FROM
    seats s
LEFT OUTER JOIN
    boarding_passes b ON s.seat_no = b.seat_no
GROUP BY
    s.seat_no
ORDER BY
    num_bookings DESC;

/* Explanation:
This query combines seats and boarding_passes tables with a LEFT OUTER JOIN, ensuring all seats are included. It groups data by seat number and counts bookings for each seat. The output lists all seats with their respective booking counts, prioritizing the most popular seats.
*/

-- Additional Query: Check if there are seats that have never been booked.
SELECT
    s.seat_no
FROM
    seats s
LEFT OUTER JOIN
    boarding_passes b ON s.seat_no = b.seat_no
WHERE
    b.seat_no IS NULL;

/* Explanation:
- This query checks if there are seats that have never been booked by using a LEFT OUTER JOIN between the seats table and the boarding_passes table.
- It selects seats where there is no corresponding booking (b.seat_no IS NULL), indicating that the seat has never been booked.
- The result shows the seat numbers of seats that have never been booked.
*/

-- Additional : 
-- Task: Determine the most popular seats and find out if there are seats that have never been booked. Also, find out which line (A, B, ..., H) has been chosen most frequently.
-- Query:
SELECT 
    RIGHT(s.seat_no, 1) AS seat_line,
    COUNT(b.seat_no) AS num_bookings
FROM 
    seats s
LEFT JOIN 
    boarding_passes b ON s.seat_no = b.seat_no
GROUP BY 
    seat_line
ORDER BY 
    num_bookings DESC;

/* Explanation:
This query retrieves seat lines (A, B, ..., H) from the seats table, counting bookings for each seat via a LEFT OUTER JOIN with the boarding_passes table. It ensures all seats are included and connects them with bookings, if any. The count of bookings for each seat line is grouped and ordered in descending order to reveal the most popular seats.
*/


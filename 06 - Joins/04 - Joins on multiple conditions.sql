-- Task: Get the average amount for different seat numbers.
-- Query:
SELECT 
    seat_no,
    ROUND(AVG(amount), 2) AS average_amount
FROM 
    boarding_passes b
LEFT JOIN 
    ticket_flights t ON b.ticket_no = t.ticket_no AND b.flight_id = t.flight_id
GROUP BY 
    seat_no
ORDER BY 
    average_amount DESC;

/* Explanation:
- This query calculates the average amount for different seat numbers.
- It joins the boarding_passes table with the ticket_flights table based on ticket_no and flight_id.
- The AVG(amount) function calculates the average amount for each seat number.
- The result is grouped by seat_no and ordered by average amount in descending order.
*/

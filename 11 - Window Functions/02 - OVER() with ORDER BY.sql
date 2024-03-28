-- Task: Calculate the running total of flight delays (difference between actual_arrival and scheduled arrival) ordered by flight_id including the departure airport.
-- Query:
SELECT 
    flight_id,
    departure_airport,
    SUM(actual_arrival - scheduled_arrival) 
        OVER (ORDER BY flight_id) AS running_total_delay
FROM 
    flights
ORDER BY 
    flight_id;

/* Explanation:
This query computes the running total of flight delays by subtracting scheduled arrival time from actual arrival time. It utilizes the SUM() function with the OVER() clause to calculate the cumulative sum of delays, ordered by flight_id. The running total is computed for each row, and the results are then ordered by flight_id.
*/

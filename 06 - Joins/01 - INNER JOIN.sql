-- Task: Determine the number of people who choose seats in each fare condition category.
-- Query:
SELECT
    fare_conditions,
    COUNT(*) AS num_passengers
FROM
    boarding_passes b
INNER JOIN
    seats s ON s.seat_no = b.seat_no
GROUP BY
    fare_conditions;

/* Explanation:
- This query joins the boarding_passes table with the seats table using the seat_no column.
- It groups the data by the fare_conditions column, which represents different fare condition categories such as Business, Economy, or Comfort.
- COUNT(*) is used to count the number of passengers in each fare condition category.
- The result provides the count of passengers who choose seats in each fare condition category.
*/

-- task: Replace null values in the return_date column with 'not returned'.
SELECT 
    rental_date,
    COALESCE(CAST(return_date AS VARCHAR), 'not returned') AS return_status
FROM 
    rental
ORDER BY 
    rental_date DESC;

/* Explanation:
- This query retrieves rental dates and replaces null return dates with 'not returned'.
- The CAST function converts return_date to VARCHAR for consistency.
- COALESCE replaces null return dates with 'not returned'.
- The result shows rental dates alongside return statuses.
*/

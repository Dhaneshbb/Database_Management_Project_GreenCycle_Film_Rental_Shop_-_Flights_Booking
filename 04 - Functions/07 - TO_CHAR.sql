-- Task: Sum and group payments in the format: Fri,24/01/2020
-- Query:
SELECT 
    SUM(amount) AS total_amount,
    TO_CHAR(payment_date, 'Dy,DD/MM/YYYY') AS date
FROM 
    payment
GROUP BY 
    date;

/* Explanation:
- This query calculates the total amount and groups payments in the format: 'Day of the week, Day/Month/Year'.
- It uses the TO_CHAR function to format the payment_date as specified.
*/

-- Task: Sum and group payments in the format: May, 2020
-- Query:
SELECT 
    SUM(amount) AS total_amount,
    TO_CHAR(payment_date, 'Month, YYYY') AS date
FROM 
    payment
GROUP BY 
    date;

/* Explanation:
- This query calculates the total amount and groups payments in the format: 'Month, Year'.
- It uses the TO_CHAR function to format the payment_date as specified.
*/

-- Task: Sum and group payments in the format: Thu, 02:44
-- Query:
SELECT 
    SUM(amount) AS total_amount,
    TO_CHAR(payment_date, 'Dy, HH24:MI') AS date
FROM 
    payment
GROUP BY 
    date;

/* Explanation:
- This query calculates the total amount and groups payments in the format: 'Day of the week, Hour:Minute'.
- It uses the TO_CHAR function to format the payment_date as specified.
*/

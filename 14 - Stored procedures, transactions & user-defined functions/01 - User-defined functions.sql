-- Task: Create a function to calculate the total amount of payments made by a customer.
-- Query:
CREATE FUNCTION name_search (
    first_name_arg VARCHAR(20),
    last_name_arg VARCHAR(20)
)
RETURNS DECIMAL(6, 2)
LANGUAGE plpgsql
AS 
$$
DECLARE 
    total_payment DECIMAL(6, 2);
BEGIN
    SELECT SUM(amount)
    INTO total_payment
    FROM payment AS p
    NATURAL LEFT JOIN customer
    WHERE first_name = first_name_arg
    AND last_name = last_name_arg;

    RETURN total_payment;
END;
$$;

/* Explanation:
The provided SQL code creates a user-defined function called `name_search` to calculate the total payment amount made by a customer with the given first and last names. The function takes two arguments: `first_name_arg` and `last_name_arg`. Inside the function, it computes the sum of payments made by the specified customer using a SELECT statement and returns the total payment amount. The function is then used to retrieve the total payment amount for a specific customer and can be applied to all customers in the `customer` table.
*/

-- Example usage:
-- Test the function with specific customer names.
SELECT name_search('AMY', 'LOPEZ');

-- Test the function for all customers, displaying their first name, last name, and total payment amount.
SELECT 
    first_name,
    last_name,
    name_search(first_name, last_name)
FROM customer;
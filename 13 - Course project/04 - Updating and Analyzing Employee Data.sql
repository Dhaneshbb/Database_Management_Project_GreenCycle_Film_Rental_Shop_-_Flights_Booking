-- Task 4.1: Update Jack Franklin's position and salary.
UPDATE employees
SET position_title = 'Senior SQL Analyst', salary = 7200
WHERE first_name = 'Jack' AND last_name = 'Franklin';

-- Task 4.2: Update the position title from Customer Support to Customer Specialist.
UPDATE employees
SET position_title = 'Customer Specialist'
WHERE position_title = 'Customer Support';

-- Task 4.3: Increase the salary of SQL Analysts by 6%.
UPDATE employees
SET salary = salary * 1.06
WHERE position_title LIKE '%SQL Analyst' AND position_title != 'Senior SQL Analyst';

-- Task 4.4: Calculate the average salary of SQL Analysts (excluding Senior SQL Analyst).
SELECT ROUND(AVG(salary), 2) AS average_salary
FROM employees
WHERE position_title = 'SQL Analyst' AND position_title != 'Senior SQL Analyst';


/*
 Explanation:
For the first task, update Jack Franklin's position and salary. Then, rename the job title "Customer Support" to "Customer Specialist." Additionally, increase SQL Analysts' salaries by 6%, and calculate the average salary of SQL Analysts, excluding Senior SQL Analysts.
*/
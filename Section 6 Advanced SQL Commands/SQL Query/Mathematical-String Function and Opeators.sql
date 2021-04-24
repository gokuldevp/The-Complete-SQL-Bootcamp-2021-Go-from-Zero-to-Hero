-- Mathematical Function and Operators in SQL
SELECT rental_rate, replacement_cost, ROUND(rental_rate/replacement_cost, 2)*100 AS rental_rate_per_replacement_cost_in_percentage
FROM film;

-- String Function and Operators in SQL
-- || - string cancatination
SELECT first_name ||' '|| last_name AS full_name FROM customer;

-- string length - find length of the string
SELECT LENGTH(first_name ||' '|| last_name) AS name_length FROM customer;

-- string upper - convert string to upper case
SELECT UPPER(first_name ||' '|| last_name) AS full_name FROM customer;

-- creating email using cancatination, lower and left - get string of the left side.
SELECT LOWER(LEFT(first_name,2) || last_name) || '@gmail.com' AS email FROM customer;
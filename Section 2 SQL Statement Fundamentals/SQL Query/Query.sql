-- Use SELECT * FROM table_name; - to get all the columns in a table
SELECT * FROM actor; 

-- SELECT column_1, column_2 FROM table_name; - to only get the columns of the given name from the table 
SELECT first_name, last_name FROM actor;

-- Challenge: SELECT - Get first_name, Last_name and email from the table customer.
SELECT first_name, last_name, email FROM customer;

-- DISTINCT - is used to find UNIQUE elements in a column, We can put the column names we need to in () It works even without it.
SELECT DISTINCT release_year FROM film;
SELECT DISTINCT(rental_rate) FROM film;

-- Challenge: SELECT DISTINCT - Get Unique rating of Films from the table Film.
SELECT DISTINCT (rating) FROM film;

-- COUNT - is used for returning the number of rows, We can put * or any column name to get the count. 
SELECT COUNT (*) FROM film;
SELECT COUNT (title) FROM film;

-- we can use COUNT and DISTINCT together to get the number of DISTINCT elements in the table.
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- WHERE - it allows us to specify conditions on columns for the rows to be returned.
-- WHERE, COMPARISON OPERATORS - Equal(=), Greater(>), Less(<), Greater or Equal(>=), Less or Equal(<=), Not Equal(!=, <>).
-- Strings need to be put inside Single quote ''.
SELECT length FROM film
WHERE rating='R' ; 

-- WHERE, LOGICAL OPERATORS - AND, OR, NOT.
SELECT length, replacement_cost FROM film
WHERE rating='R' AND length>182;

-- Challenge : SELECT WHERE 1- Customer(Nancy Thomas) forgot wallet, Inform him throught emal, what is his email?
SELECT email FROM customer
WHERE first_name='Nancy' AND last_name='Thomas';

-- Challenge : SELECT WHERE 2- Customer what to know about description for movie 'Outlaw Hanky'.
SELECT description FROM film
WHERE title='Outlaw Hanky';

-- Challenge : SELECT WHERE 3- Customer is late on movie return. Find phone number of customer who lives at '259 Ipoh Drive'?
SELECT phone FROM address
WHERE address='259 Ipoh Drive';

-- ORDER BY - sort rows based on column values either ascending(ASC) or descenting(DESC) - ASCENDING is default.
-- We can ORDER BY multiple columns.
SELECT * FROM customer
ORDER BY store_id DESC, first_name ASC;

-- LIMIT - used to limit the number of rows. - is placed at the end of the query.
SELECT * FROM customer
LIMIT 5;

-- challenge - ORDER BY 1 - Find Customer ids of first 10 paying customers?
SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

-- challenge - ORDER BY 2 - Title of 5 shortest movies?
SELECT title FROM film
ORDER BY length ASC
LIMIT 5;

-- -- challenge - BONUS QUESTION - if customer can watch movies < 50 min, how many opection does he have?
SELECT COUNT(*) FROM film
WHERE length <= 50;

-- BETWEEN - used to match a value against a range of values. - BETWEEN low AND high? - include low, high.
SELECT * FROM film
WHERE length BETWEEN 50 AND 60;
-- NOT BETWEEN - gives result excluding a range of values. don't include low and high.
SELECT * FROM film
WHERE length NOT BETWEEN 50 AND 60;
-- -- -- -- -- we need date in format YYYY-MM-DD to be used in BETWEEN.
SELECT * FROM film
WHERE last_update BETWEEN '2013-04-26' AND '2013-06-26';

-- IN - to check if a value is present in a list .- value IN(option1,option2...,option_n).
SELECT * FROM film
WHERE 'R' IN (rating);

SELECT * FROM film
WHERE rating IN ('R', 'PG-13');

-- LIKE - perform pattern matching using wildcard characters(%, _). It is case-sensitive.
-- ILIKE - same as LIKE . it is not case-sensitive.
-- % - match sequence of characters, we can use % begining and ending.
-- All name begin with an 'A' - WHERE name LIKE 'A%'
-- All name end with an 'a' - WHERE name LIKE '%a'
-- _ - matches single characters, we can use multiple _
-- Getting all Mission Impossible films - WHERE title LIKE 'Mission Impossible _'
-- we can also use both _ and % together.
SELECT * FROM film
WHERE title LIKE 'Gross%';

SELECT * FROM film
WHERE title ILIKE 'gross%';

SELECT * FROM film
WHERE title ILIKE '%ss%';

SELECT * FROM film
WHERE title ILIKE '%Gla__';

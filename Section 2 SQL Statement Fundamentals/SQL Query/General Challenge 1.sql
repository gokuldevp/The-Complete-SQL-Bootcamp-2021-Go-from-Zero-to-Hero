-- How many payment transactionswere greater than $5.00?
SELECT COUNT(*) FROM payment
WHERE amount > 5;

-- How many actors have a first name that starts with letter P?
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

-- How many Unique Districts are our customers from?
SELECT COUNT(DISTINCT district) FROM address;

-- Retrive the list of names from those distinct districts from the previous question?
SELECT DISTINCT district FROM address;

-- How many films have a rating of R and a replacement cost between $5 and $15?
SELECT COUNT(*) FROM film
WHERE rating='R' AND replacement_cost BETWEEN 5 AND 15;

-- How many films have the word Trumen somewhere in the title?
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';


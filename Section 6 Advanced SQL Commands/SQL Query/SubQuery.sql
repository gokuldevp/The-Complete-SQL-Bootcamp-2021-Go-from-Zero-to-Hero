-- sub query - perform a query on the result of anouther query.
-- we use 2 SELECT.
-- Help to perform 2 query in a single query;

-- we can use different logical operators along with subquery to check 'single' result return.
SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > (SELECT AVG(amount) FROM payment)
ORDER BY customer_id;

-- We an use IN operator with a subquery to check 'multiple' results return.
SELECT customer_id, first_name, last_name FROM customer
WHERE first_name IN (SELECT first_name FROM staff);

-- EXISTS operator is used to test the existence of rows in a subquery if EXISTS then the Query is executed.
SELECT customer_id, first_name, last_name FROM customer
WHERE EXISTS(SELECT amount FROM payment )
ORDER BY first_name;


-- AS - allows us to create a alias for column and results.
-- AS gets executed at the very end of a query, meaning we cann't use the ALIAS for function inside WHERE, HAVING.. operator. 
SELECT customer_id AS c_id, SUM(amount) AS total FROM payment
GROUP BY c_id
HAVING SUM(amount) > 150;


-- JOINS - allow us to combine information for multiple tables.
-- We need to specify the name of the table before column in JOIN for column names that are in both tables.
-- INNER JOIN - Gives us result that matches both tables.
-- INNER JOIN are symmetrical(Table A,Table B => Table B, Table A gives same results)
-- PostgreSQL treat JOIN as INNER JOIN.
SELECT * FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id;

-- We can give alias to column to make it easy to write.
SELECT * FROM payment AS pa
INNER JOIN customer AS cu
ON pa.customer_id = cu.customer_id;

SELECT payment_id, payment.customer_id, first_name FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT st.first_name, st.last_name,cu.first_name, cu.last_name  FROM staff AS st
INNER JOIN customer AS cu
ON st.first_name = cu.first_name;


-- FULL OUTER JOIN - are symmetrical(Table A,Table B => Table B, Table A gives same results)
-- In FULL OUTER JOIN - The Result gives a table with all columns(with a new row for each additional id) data with of both tables where null value is placed in columns which don't have a match.
SELECT * FROM staff AS st
FULL OUTER JOIN customer AS cu
ON st.first_name = cu.first_name;

-- WHERE is used with FULL OUTER JOIN to get rows that are not present in both table.(i.e- we get unique column from both table)
SELECT st.first_name, st.last_name,cu.first_name, cu.last_name  FROM staff AS st
FULL OUTER JOIN customer AS cu
ON st.first_name = cu.first_name
WHERE st.staff_id IS null OR cu.customer_id IS null;


-- LEFT OUTER JOIN - result in set of records that are in the left table, if there is no match with right table, the result are null.
-- LEFT OUTER JOIN is not symmetrical (Table A,Table B !=> Table B, Table A)- Gives different results.
-- LEFT OUTER JOIN is same as LEFT JOIN.
-- it show every thing in LEFT table , dont show any table unique to RIGHT table.
SELECT st.first_name, st.last_name,cu.first_name, cu.last_name  FROM staff AS st
LEFT OUTER JOIN customer AS cu
ON st.first_name = cu.first_name;

SELECT cu.first_name, cu.last_name,st.first_name, st.last_name FROM customer AS cu
LEFT OUTER JOIN staff AS st
ON st.first_name = cu.first_name;

-- here WHERE is used to get unique rows to table LEFT
SELECT cu.first_name, cu.last_name,st.first_name, st.last_name FROM customer AS cu
LEFT OUTER JOIN staff AS st
ON st.first_name = cu.first_name
WHERE st.first_name IS null;


-- RIGHT OUTER JOIN - every thing in LEFT OUTER JOIN jest in the tables are switched.
-- RIGHT OUTER JOIN is same as RIGHT JOIN.
SELECT st.first_name, st.last_name,cu.first_name, cu.last_name  FROM staff AS st
RIGHT OUTER JOIN customer AS cu
ON st.first_name = cu.first_name;

SELECT cu.first_name, cu.last_name,st.first_name, st.last_name FROM customer AS cu
RIGHT OUTER JOIN staff AS st
ON st.first_name = cu.first_name;

-- here WHERE is used to get unique rows to table RIGHT
SELECT cu.first_name, cu.last_name,st.first_name, st.last_name FROM customer AS cu
RIGHT OUTER JOIN staff AS st
ON st.first_name = cu.first_name
WHERE st.first_name IS null;


-- UNION - combine result-set of two or more SELECT statements.
-- The Union should be "Logical". - i.e we can only UNION same type of columns.
-- it concatenates two results together.
-- SYNTAX - SELECT * FROM table1 UNION SELECT * FORM table2;
SELECT first_name, last_name FROM customer
UNION
SELECT first_name, last_name FROM staff;






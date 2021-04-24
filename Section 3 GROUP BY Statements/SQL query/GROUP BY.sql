-- GROUP BY - used to aggregate columns per some category. - Need to choose categorical columns.
-- GROUP BY must apper right after FROM or WHERE.
-- In the SELECT statement, columns must either have an aggregate function or be the GROUP BY call.
-- WHERE should not refer to aggregation result.
-- SELECT category_col, AGG(data_col) FROM table GROUP BY category_col;
SELECT rating, COUNT(*) FROM  film
GROUP BY rating;

SELECT COUNT(*) FROM  film
GROUP BY rating;

-- SELECT category_col, AGG(data_col) FROM table WHERE category_col='A' GROUP BY category_col;
SELECT rating, COUNT(*) FROM  film
WHERE rating != 'R'
GROUP BY rating;

-- when we ORDER BY we need to order by  "GROUP BY column" or 
SELECT rating, COUNT(*) FROM  film
WHERE rating != 'R'
GROUP BY rating
ORDER BY rating;

-- by "AGG(data_col) for ordering in order of data col".
SELECT rating, COUNT(*) FROM  film
GROUP BY rating
ORDER BY COUNT(*);

-- we can GROUP BY multiple columns.
SELECT rating, rental_rate, COUNT(*) FROM film
GROUP BY rating, rental_rate
ORDER BY rating, rental_rate, COUNT(*);

-- if we are using GROUP BY on timestamp we need to use DATE to convert the timestamp to date datatype.
SELECT DATE(last_update), SUM(replacement_cost) FROM film
GROUP BY DATE(last_update);
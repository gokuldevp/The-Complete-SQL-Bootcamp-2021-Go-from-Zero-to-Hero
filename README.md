# SQL Commands for Database Operations

This document provides a list of SQL commands that can be used for various database operations.

## Selecting All Columns from a Table

Use the following command to select all columns from a table:

```sql
SELECT * FROM actor;
```

## Selecting Specific Columns from a Table

Use the following command to select specific columns from a table:

```sql
SELECT first_name, last_name FROM actor;
```

## Selecting Specific Columns from a Table with a Condition

Use the following command to select specific columns from a table with a condition:

```sql
SELECT first_name, last_name, email FROM customer;
```

## Selecting Unique Elements from a Column

Use the following command to select unique elements from a column:

```sql
SELECT DISTINCT release_year FROM film;
SELECT DISTINCT(rental_rate) FROM film;
```

## Counting the Number of Rows in a Table

Use the following command to count the number of rows in a table:

```sql
SELECT COUNT (*) FROM film;
SELECT COUNT (title) FROM film;
```

## Counting the Number of Distinct Elements in a Column

Use the following command to count the number of distinct elements in a column:

```sql
SELECT COUNT(DISTINCT replacement_cost) FROM film;
```

## Selecting Rows Based on a Condition

Use the following command to select rows based on a condition:

```sql
SELECT length FROM film WHERE rating='R';
SELECT length, replacement_cost FROM film WHERE rating='R' AND length>182;
```

## Ordering Rows Based on Column Values

Use the following command to order rows based on column values:

```sql
SELECT * FROM customer ORDER BY store_id DESC, first_name ASC;
```

## Limiting the Number of Rows Returned

Use the following command to limit the number of rows returned:

```sql
SELECT * FROM customer LIMIT 5;
```

## Selecting Rows Based on a Range of Values

Use the following command to select rows based on a range of values:

```sql
SELECT * FROM film WHERE length BETWEEN 50 AND 60;
```

## Selecting Rows Based on a List of Values

Use the following command to select rows based on a list of values:

```sql
SELECT * FROM film WHERE 'R' IN (rating);
SELECT * FROM film WHERE rating IN ('R', 'PG-13');
```

## Selecting Rows Based on a Pattern

Use the following command to select rows based on a pattern:

```sql
SELECT * FROM film WHERE title LIKE 'Gross%';
SELECT * FROM film WHERE title ILIKE 'gross%';
SELECT * FROM film WHERE title ILIKE '%ss%';
SELECT * FROM film WHERE title ILIKE '%Gla__';
```

## Aggregate Functions

Aggregate functions take multiple inputs and return a single output. Examples include `AVG()`, `COUNT()`, `MAX()`, `MIN()`, `SUM()`.

- `AVG()`: Returns the mean average. It returns a floating point, so use `ROUND()` along with it to specify the precision.

```sql
SELECT ROUND(AVG(amount),2) FROM payment;
```

- `MIN()`, `MAX()`: Returns the minimum and maximum value, respectively.

```sql
SELECT MIN(amount), MAX(amount) FROM payment;
```

- `SUM()`: Returns the total value.

```sql
SELECT SUM(amount) FROM payment;
```

- `COUNT()`: Returns the number of rows.

```sql
SELECT COUNT(*) FROM payment;
```

## GROUP BY

`GROUP BY` is used to aggregate columns per some category. It must appear right after `FROM` or `WHERE`. In the `SELECT` statement, columns must either have an aggregate function or be the `GROUP BY` call. `WHERE` should not refer to aggregation result.

```sql
SELECT rating, COUNT(*) FROM  film
GROUP BY rating;

SELECT COUNT(*) FROM  film
GROUP BY rating;
```

When we `ORDER BY` we need to order by the "GROUP BY column" or by "AGG(data_col)" for ordering in order of data col.

```sql
SELECT rating, COUNT(*) FROM  film
WHERE rating != 'R'
GROUP BY rating
ORDER BY rating;
```

We can `GROUP BY` multiple columns.

```sql
SELECT rating, rental_rate, COUNT(*) FROM film
GROUP BY rating, rental_rate
ORDER BY rating, rental_rate, COUNT(*);
```

If we are using `GROUP BY` on timestamp we need to use `DATE` to convert the timestamp to date datatype.

```sql
SELECT DATE(last_update), SUM(replacement_cost) FROM film
GROUP BY DATE(last_update);
```

We can't use `WHERE` to filter based off aggregate results, because those happen after a `WHERE` is executed. `HAVING` helps us to filter after an aggregation has already taken place. `HAVING` can be used along with `GROUP BY` to filter aggregate result.

```sql
SELECT rating, SUM(replacement_cost) FROM film
GROUP BY rating
HAVING SUM(replacement_cost) > 4000;
```

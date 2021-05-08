/*
==> CASE 
-- to only execute SQL code only when certain conditions are met(Jest like IF/ELSE in programing).
-- Case can be used in two ways(Both gives the same result.)
    - General CASE
	- CASE expression


==> GENERAL CASE 

--> Syntax
  CASE
      WHEN condition1 THEN result1
	  WHEN condition2 THEN result2
	  ELSE some_other_result
  END;

--> Example
  SELECT a,
  CASE WHEN a=1 THEN 'one'
       WHEN a=2 THEN 'two'
	   ELSE 'other'
  END
  FROM test;


==> CASE EXPRESSION - it first evaluates an expression then compares the result with each value in the
                      WHEN clauses sequentially.

--> Syntax
  CASE expression
      WHEN value1 THEN result1
	  WHEN value2 THEN result2
	  ELSE some_other_result
  END;
  
--> Example
  SELECT a,
  CASE a WHEN 1 THEN 'one'
         WHEN 2 THEN 'two'
		 ELSE 'other'
  END
  FROM text;
*/

-- Using General CASE 
SELECT customer_id,
CASE 
    WHEN (customer_id <= 100) THEN 'Premium'
	WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal'
END AS status
FROM customer;


-- Using CASE Expression
SELECT customer_id, first_name, last_name,
CASE customer_id
    WHEN 2 THEN 'Winner'
	WHEN 6 THEN 'Second Place'
	ELSE 'Better luck next Time!'
END AS results
FROM customer;


-- CASE CHALLENGE TASK
SELECT
SUM(CASE rating 
	WHEN 'PG' THEN 1 
	END) AS pg,
SUM(CASE rating 
	WHEN 'NC-17' THEN 1 
	END) AS NC_17,
SUM(CASE rating 
	WHEN 'G' THEN 1 
	END) AS g,
SUM(CASE rating 
	WHEN 'PG-13' THEN 1 
	END) AS pg_13,
SUM(CASE rating 
	WHEN 'R' THEN 1 
	END) AS r
FROM film;


---- Datatypes---------------------------------------------------------------------------------------------------------------
-- TIME - Contains only Time.
-- DATE - Contains only Date.
-- TIMESTAMP - Contains Date and Time.
-- TIMESTAMPTZ - Contains Date , Time and Timezone.

---- Functions and operations related to these specific data types.----------------------------------------------------------
-- TIMEZONE 
-- NOW 
-- TIMEOFDAY
-- CURRENT_TIME
-- CURRENT_DATE
-----------------------------------------------------------------------------------------------------------------------------
-- SHOW - Show value of Run-time parameters.
SHOW ALL;

-- SHOW TIMEZONE result us with our current timezone we are using.
SHOW TIMEZONE;

-- SELECT NOW() result us with current(real_time) TIMESTAMPTZ(Timestamp with time zone) information in Standard GMT.
SELECT NOW();

-- SELECT TIMEOFDAY() - Returns the same information of SELECT NOW() but as a string eg: Tue Apr 20 05:50:47.834731 2021 IST
SELECT TIMEOFDAY();

-- SELECT CURRENT_TIME; - Returns Current time with time zone.
SELECT CURRENT_TIME;

-- SELECT CURRENT_DATE; - Returns Current date.
SELECT CURRENT_DATE;

----------------------------------------------------------------------------------------------------------------------------
---- Extracting information from a time based data using -------------------------------------------------------------------
-- EXTRACT()
-- AGE()
-- TO_CHAR()
----------------------------------------------------------------------------------------------------------------------------
-- EXTRACT() - Allow to extract or obtain a sub-component of date value.(YEAR, MONTH, DAY, WEEK, QUARTER).
-- eg: EXTRACT(YEAR FROM date_col)
SELECT EXTRACT(YEAR FROM payment_date) FROM payment;
----------------------------------------------------------------------------------------------------------------------------
-- AGE() - Calculate and Return the current age given a timestamp
-- eg: AGE(date_col)
SELECT AGE(payment_date) FROM payment;
----------------------------------------------------------------------------------------------------------------------------
-- TO_CHAR() - General function to conver data types to text.(not only for date datatype, used in other cases as well )
-- eg: TO_CHAR(date_col, 'mm-dd-yyyy')
SELECT TO_CHAR(payment_date, 'mm-dd-yyyy') FROM payment;
----------------------------------------------------------------------------------------------------------------------------


-- Challenge 1 - During which months did payments occur? Format your answer to return back full month name.
SELECT DISTINCT(TO_CHAR(payment_date, 'Month')) AS month FROM payment;

-- Challenge 2 - How Many Payment Occured on Monday?
SELECT  COUNT(*) FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;







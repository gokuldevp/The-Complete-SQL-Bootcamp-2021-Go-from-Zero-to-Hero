-- AGGREGATE FUNCTIONS - Takes multiple inputs and return a single output.
-- AVG(), COUNT(), MAX(), MIN(), SUM()
-- AVG() - Mean Average - Return floating point, So use ROUND() along with it to get to specify the Precision.
SELECT ROUND(AVG(amount),2) FROM payment;
-- MIN() - Minimum value, MAX()- Maximum value
SELECT MIN(amount), MAX(amount) FROM payment;
-- SUM() - Total Value.
SELECT SUM(amount) FROM payment;
-- COUNT()- Number of rows
SELECT COUNT(*) FROM payment;
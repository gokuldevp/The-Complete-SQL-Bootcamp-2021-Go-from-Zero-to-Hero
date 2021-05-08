/*
==> NULLIF - take in 2 arguments as input and return NULL if both are equal
             ,otherwise it returns the first argument passed.

--> Syntax :
-- NULLIF(arg1, arg2);

--> Example:
input : NULLIF(10, 10);
output: NULL

input : NULLIF(4, 10);
output: 4

==> Given the table calculate the ratio of department A and department B
========================
||Name    |Department ||
========================
||Lauren  |A          ||
||Vinton  |A          ||
||Claire  |B          ||
========================
*/

-- CREATE TABLE depts(
--     first_name VARCHAR(50),
-- 	department VARCHAR(50)
-- );

-- INSERT INTO depts(first_name,department)
-- VALUES('Lauren', 'A'),('Vinton', 'A'),('Claire', 'B');


-- SELECT (
--     SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
--     SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END)
-- ) AS dept_ratio FROM depts;

-- DELETE FROM depts
-- WHERE department = 'B'

SELECT (
    SUM(CASE WHEN department = 'A' THEN 1 ELSE 0 END)/
    NULLIF(SUM(CASE WHEN department = 'B' THEN 1 ELSE 0 END),0)
) AS dept_ratio FROM depts;













/*
==> DROP - complete removal of column in a table 
-- in PostgreSQL this will automatically remove all of its indexes and constraints involving in the 
   column.
-- It will not remove columns used in views, triggers or stored procedures without the additional
   without the additional CASCADE clause.

==> GENERAL SYNTAX
-- ALTER TABLE table_name
-- DROP COLUMN col_name;

--> Remove all dependencies 
-- ALTER TABLE table_name
-- DROP COLUMN col_name CASCADE;

--> Checking for existing to avoid error
-- ALTER TABLE table_name
-- DROP COLUMN IF EXISTS col_name;

--> Drop multiple columns
-- ALTER TABLE table_name
-- DROP COLUMN col_one,
-- DROP COLUMN col_two,
   ...
-- DROP COLUMN col_n;
*/

ALTER TABLE new_info
DROP COLUMN IF EXISTS person;

SELECT * FROM new_info;
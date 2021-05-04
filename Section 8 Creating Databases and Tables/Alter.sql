/*
==> ALTER - allows changes to an existing table structure.
-- Adding, droping or renaming columns
-- Change a column's data type
-- Set DEFAULT values for a column
-- Add CHECK constraints
-- Rename Table


==> GENERAL SYNTAX
-- ALTER TABLE table_name action;

--> Adding Columns
-- ALTER TABLE table_name
-- ADD COLUMN new_col TYPE;

--> Remove Columns 
-- ALTER TABLE table_name
-- DROP COLUMN col_name;

--> Alter Constraints
-- ALTER TABLE table_name
-- ALTER COLUMN col_name
-- SET DEFAULT value;

-- ALTER TABLE table_name
-- ALTER COLUMN col_name
-- DROP DEFAULT;

-- ALTER TABLE table_name
-- ALTER COLUMN col_name
-- SET NOT NULL;

-- ALTER TABLE table_name
-- ALTER COLUMN col_name
-- DROP NOT NULL;

-- ALTER TABLE table_name
-- ALTER COLUMN col_name
-- ADD CONSTRAINT constraint_name;

-- ALTER TABLE teachers
-- RENAME COLUMN last_null TO last_name;
*/

--> CHANGING TABLE NAME
-- ALTER TABLE info
-- RENAME TO new_info;

--> CHANGING COLUMN CONSTRAINT(Removing NOT NULL)
ALTER TABLE new_info
ALTER COLUMN person
DROP NOT NULL;



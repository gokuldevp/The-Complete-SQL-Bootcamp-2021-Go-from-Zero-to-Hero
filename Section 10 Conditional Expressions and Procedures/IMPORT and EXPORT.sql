/*
==> IMPORT - allow us to IMPORT data from a .csv file to a an already existing table.
==> EXPORT - allow us to EXPORT data(table) as a .csv file.

note 1: not all file will work - variations in formatting, macros, data types,etc... may 
        prevent the IMPORT command from reading the file, so we might need to edit file
	    or change the table to be compatible with SQL.
	
note 2: The correct file path to the outside should be given for import otherwise there will be error.

note *3: IMPORT DOES NOT create a table, it assumes table is already created.  
*/

-- CREATE TABLE simple(
--     a INT,
-- 	b INT,
-- 	c INT
-- );

SELECT * FROM simple;
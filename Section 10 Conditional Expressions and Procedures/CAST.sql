/*
==> CAST - Convert From One Data Type to another Data Type.
-- Note: not every data type can be convert to anouther, 
   eg: string data type cann't be converted to integer.
   
==> Syntax: 
--> using CAST function 
- SELECT CAST('5' AS INTEGER);

--> using CAST operator, which is only in PostgreSQL.
- SELECT '5'::INTEGER;
*/

SELECT CAST('5' AS INTEGER);

SELECT '5'::INTEGER;

-- this is invalid: SELECT 'five'::INTEGER;

SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;
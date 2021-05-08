/*
==> COALESCE - it accepts unlimited number of arguments. it return the first argument that is not null
    . if all arguments are null it return null.
	
--> Syntax:
-- COALESCE(arg_1, arg_2,...,arg_n)

--> Example:
Query --> SELECT COALESCE(a, b, c)                                     - where a = null, b = 2, c = 1
output--> 2

-- the COALESCE function become useful when querying a table that contains null values and substututing
   it with anouther example.
   
- Consider table products

==============================
 ||item  | price  |biscount||
==============================
 ||A     |100     |20      ||
------------------------------
 ||B     |300     |null    ||
------------------------------
 ||C     |200     |10      ||
==============================
-finding final price from the table

Query : SELECT item,(price-discount) AS final FROM table;
Output : 
====================
 ||item  | final ||
====================
 ||A     |80     ||
--------------------
 ||B     |null   ||
--------------------
 ||C     |190    ||
====================
Problem : 300 - null should have given 300, but it gives null

Query : SELECT item,(price-COALESCE(discount,0)) AS final FROM table;
Output : 
====================
 ||item  | final ||
====================
 ||A     |80     ||
--------------------
 ||B     |300    ||
--------------------
 ||C     |190    ||
====================
*/





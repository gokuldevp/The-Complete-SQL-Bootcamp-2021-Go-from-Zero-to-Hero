/*
==> VIEWS - it is a database object that is of a stored query.
            it can be accessed as a virtual table in PostgreSQL.
			it is not stored physically, it simply stored the query like it a already existing Table.
			we can update and alter existing views.
- VIEWS are created to quickly see querys that are performed over and overagain in a project as if its a table that already exists.


--> Syntax for creating a VIEW:
- CREATE VIEW view_name AS
  query;
  

--> Syntax for editing a VIEW:
- CREATING OR REPLACE VIEW view_name AS
  query;

--> Syntax For REMOVE a View:
- DROP VIEW IF EXISTS customer_info;

--> Syntax for Changing name of VIEW:
- ALTER VIEW customer_info RENAME TO cust_info;
*/

/*
-- -- Example for Creating a VIEW:
CREATE VIEW customer_info AS
SELECT first_name,last_name,address FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;
*/

--Example for editing a view:
CREATE OR REPLACE VIEW customer_info AS
SELECT first_name,last_name,address,district FROM customer
INNER JOIN address
ON customer.address_id = address.address_id;

SELECT * FROM customer_info;





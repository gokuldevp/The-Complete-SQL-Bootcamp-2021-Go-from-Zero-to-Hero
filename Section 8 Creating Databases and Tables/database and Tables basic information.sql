/* 
==> Data Types
--Boolean - True , False
--Character - char, varchar, text
--Numeric - integer and floting-point number
--Temporal - date, time, timestamp, interval, timestamptz
--UUID - Universally Unique Identifiers
--Array - Stores an array of strings, numbers etc.
--JSON
--Hstore key-value pair
--Special types such as network address and geometric data

==>SERIAL - In PostgreSQL, a sequence is a special kind of database object that generates a 
sequence of integers. 
A sequence is often used as the primary key column in a table. 
It will create a sequence object and set the next value generated by sequence as the dwfault value for
the column.
Its a good datatype for Primary Key.
If a row is later removed, the column with SERIAL data type will not adjust, marking the fact that a
row was removed from the sequence,eg:1,2,3,5,6,7 - here we know that 4 is removed.
types of serial: smallserial, serial, bigserial.


It is recommented to view the goole for best pratices while selecting a datatype. 
*/


/*
==>Primary Key - a column or a group of columns used to identify a row uniquely in a table.
-SERIAL is the datatype used for Primary Key.
-eg: customer_id(unique, non-null) in customers table in dvdrental database.

==>Foreign key - a field or a group of fields in a table that uniquely identifies a row in anouther table.
-it is defined in a table that references to the primary key of other table.
-eg:customer_id, staff_id, rental_id in payment table in dvdrental database.

-- Table contains foreign key is called reference table is called referenceing table or child table.
-- Table that the forign key references is called referenced table or parent table.
-- A table can have multiple foreign key depending on the relationship with other tables.
*/


/*
==> Constraints - rules enforced on data columns on data.
-- used to prevent invalid data from entering into the database and ensure the accurancy and 
   reliability of the data in database.

-->Types of Constrains 
--Column Constraints - applied to data in a column.
--Table Constraints - applied to a whole table.

::> Column Constraints
- NOT NULL - ensures that a column cannot have NULL value.
- UNIQUE   - ensures that all values in a column are different.
- PRIMARY KEY - Uniquely identifies each row/record ina database.
- FORIGN KEY - Constrains data based on columns in other tables.
- CHECK - Ensure that all value in a column satisfy certain conditions.
- EXCLUSION - ensure that if any two rows are compared on the specificed column or 
  expression using the specified operator, not all of these comparisions will return TRUE.

::> Table Constraints
- CHECK(condition) - to check a condition when inserting or updating data.
- REFERENCES - to constrain the value stored in the column that must exist in a column in anouther table.
- UNIQUE(column_list) - Force column listed inside the column_list to be unique(ie, multiple unique columns)
- PRIMARY KEY(column_list) - define primary key that contains multiple columns.
*/
/*
==> Create a database School having two tables 'teachers', 'students'

--> Students table should have columns 
- student_id, first_name, last_name, homeroom_number, phone, email and graduation year.

--> Teachers table should have columns
- teacher_id, first_name, last_name, homeroom_number, department, email and phone


==> Additional Constraints
1. we must have phone number.
2. email and phone number should be unique.
3. we must have id as primary key


==> Insert into columns
-Students - Mark Watney, dont have email, +917775551234, room 5, 2035
-teachers - Jonas Salk, room 5, jsalk@school.org, +917775554321, Biology
*/

/*
==> Create Table Students

CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email varchar(100) UNIQUE,
	phone varchar(13) NOT NULL UNIQUE,
	homeroom_number SMALLINT,
	graduation_year INTEGER
);

*/

/*
==> Create Table Teachers

CREATE TABLE teachers(
    teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_null VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE,
	phone VARCHAR(13) NOT NULL UNIQUE,
	homeroom_number SMALLINT,
	department VARCHAR(50) NOT NULL
);

*/

-- ALTER TABLE teachers
-- RENAME COLUMN last_null TO last_name;

/*
==> Inserting values into a table students

INSERT INTO students(first_name,last_name,phone,homeroom_number,graduation_year)
VALUES ('Mark', 'Watney', '+917775551234', '5', '2035');

*/

/*
--==> Inserting values into a table teachers

INSERT INTO teachers(first_name,last_name,phone,email,homeroom_number,department)
VALUES ('Jonas', 'Salk', '+917775554321', 'jsalk@school.org', '5', 'Biology');

*/


/*
==> CHECK - the CHECK constrainct allows us to create more customized constraints that adhere to a
    certain condition.
-- making sure all inserted integer values fall below a certain threshold.


==> General Syntax example
-- CREATE TABLE example(
    ex_id SERIAL PRIMARY KEY,
	age SMALLINT CHECK(age>21),
	parent_age SMALLINT CHECK(parent_age>age)
);
*/ 

-- CREATE TABLE student(
--  st_id SERIAL PRIMARY KEY,
-- 	first_name VARCHAR(50) NOT NULL,
-- 	last_name VARCHAR(50) NOT NULL,
-- 	s_dob DATE NOT NULL,
-- 	age SMALLINT NOT NULL CHECK(age BETWEEN 4 AND 21),
-- 	p_dob DATE NOT NULL CHECK(p_dob > s_dob)
-- );

INSERT INTO student(first_name,last_name,s_dob,age,p_dob)
VALUES('Gokul','Dev','1976-08-17','21','1997-09-08');

select * from student
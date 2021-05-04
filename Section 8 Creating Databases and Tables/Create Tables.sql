/* 
==> CREATE - used to create Table

- Full General Syntax:
CREATE TABLE table_name(
column1_name TYPE column1_constraint,
colunm2_name TYPE column2_constraint,
...
columnN_name TYPE columnN_constraint,
table_constraint1, table_constraint2
)INHERITS existing_table_name;

-Common Simple Syntax:
CREATE TABLE table_name(
column1_name TYPE column1_constraint,
colunm2_name TYPE column2_constraint,
...
columnN_name TYPE columnN_constraint,
);

*/

/*

CREATE TABLE account(
    user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP NOT NULL
);

CREATE TABLE job(
    job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
);


--CREATING TABLE and link them through Forign Key
CREATE TABLE account_job(
    user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
);

*/





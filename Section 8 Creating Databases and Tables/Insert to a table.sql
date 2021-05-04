/*
==>INSERT - allows us to add rows into a table.

-- > inserting values into a table.
-- INSERT INTO table(col_1, col_2,..., col_n) 
-- VALUES (val_1_1, val_1_2,..., val_1_n),
--        (val_2_1, val_2_2,..., val_2_n),
-- 	   ...,
-- 	   (val_n_1, val_n_2,..., val_n_n);

-- > inserting values from anouther table.
-- INSERT INTO table(col_1, col_2,..., col_n) 
-- SELECT col_1, col_2,..., col_n FROM another_table 
-- WHERE condition;

-the inserted row values must match up for the table,data type, including constraints.
-SERIAL columns donot need to provided values. 
*/

/*
--inserting values into a table.
INSERT INTO account(username, password, email, created_on)
VALUES ('goku', 'q12snj8*', 'goku@gmail.com', CURRENT_TIMESTAMP);

INSERT INTO account(username, password, email, created_on)
VALUES ('gokul', 'inf34nf', 'gokul@gmail.com', CURRENT_TIMESTAMP);

INSERT INTO job(job_name)
VALUES ('DOCTOR');

INSERT INTO job(job_name)
VALUES ('ENGINEER');

INSERT INTO account_job(user_id, job_id, hire_date)
VALUES (3, 1, CURRENT_TIMESTAMP);
*/

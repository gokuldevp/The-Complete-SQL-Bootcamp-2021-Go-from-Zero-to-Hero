/*
==>UPDATE - change values of column in a table.
UPDATE table
SET col_1 = val_1,
    col_2 = val_2,
	...,
	col_n = val_n
WHERE conduction;	

==>using another table values(UPDATE join)
UPDATE TableA
SET orginal_col = Table.new_col FROM tableB
WHERE TableA.id = TableB.id;

==>returning affevted rows
UPDATE account
SET last_login = created_on
RETURNING account_id, last_login;
*/
UPDATE account
SET last_login = CURRENT_TIMESTAMP
WHERE last_login IS NULL;	

UPDATE account_job
SET hire_date = account.created_on FROM account
WHERE account.user_id = account_job.user_id;

SELECT * FROM account_job

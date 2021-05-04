/*
==>DELETE - remove rows from a table.
-- DELETE FROM table_name
-- WHERE conduction;

-> example : DELETE FROM table WHERE row_id=1;


==>deleting rows based on their presence in other tables.
--DELETE FROM tableA
--USING tableB
--WHERE tableA.id=tableB.id;


==>deleting alll rows from a table.
--DELETE FROM table

==> RETURNING - can be used along with DELETE to return rows that were removed.
*/

DELETE FROM job
WHERE job_name='teacher'
RETURNING job_id, job_name;

DELETE FROM job
USING account_job
WHERE job.job_id!=account_job.job_id
RETURNING *;




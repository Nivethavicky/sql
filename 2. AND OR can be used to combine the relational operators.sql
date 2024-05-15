use sql_class;

SELECT * FROM employee;

SELECT * FROM employee
WHERE ename = 'Ramya'; 

SELECT emp_id,ename,salary FROM employee
WHERE salary>2000000; 

SELECT emp_id,ename,salary FROM employee
WHERE salary<2600000 AND job_desc = 'MANAGER'; 

SELECT * FROM employee
WHERE job_desc='ADMIN' OR job_desc='HR'; -- though this works next command is a much better choice

SELECT * FROM employee
WHERE job_desc IN ('ADMIN','HR'); 

SELECT * FROM employee
WHERE job_desc NOT IN ('MANAGER','CEO');

SELECT * FROM employee
WHERE salary BETWEEN 2000000 AND 3000000
LIMIT 3; -- limits the records shown 

SELECT * FROM employee
LIMIT 5;  -- Different syntax in oracle/sql server
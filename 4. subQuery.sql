use sql_class;

select * from employee;
select * from branch;

-- Displays employee list in Chennai Branch
SELECT * FROM employee
WHERE branch_id = (SELECT branch_id
FROM branch
WHERE br_name="Chennai");





-- Displays the employees with min salary
SELECT * FROM employee
WHERE salary = (SELECT MIN(salary)
FROM employee);






-- displays the branches containing atleast one admin
SELECT branch_id,br_name
FROM branch
WHERE EXISTS 
( SELECT * FROM employee
WHERE job_desc="ADMIN" AND branch.branch_id = employee.branch_id);



-- displays the branch info in which any employee gets more than 25L
SELECT branch_id,br_name
FROM branch
WHERE branch_id = ANY
(SELECT branch_id FROM employee
WHERE salary>2500000);

SELECT branch_id FROM employee
WHERE salary>2500000;

-- displays employees not working in chennai or coimbatore

SELECT * FROM employee 
WHERE branch_id IN ( SELECT branch_id FROM branch
WHERE br_name NOT IN ("Chennai","Coimbatore"));


SELECT branch_id FROM branch
WHERE br_name IN ("Chennai","Coimbatore");

SELECT * FROM employee 
WHERE branch_id <> ALL ( SELECT branch_id FROM branch
WHERE br_name IN ("Chennai","Coimbatore"));


-- use student;
-- select * from employee;
-- select * from branch;
-- -- employees from chennai branch 
-- select * from employee
-- where branch_id= (select branch_id from branch 
-- where branch_name= "chennai"
-- );

-- --  min salary employee
-- select *from employee 
-- where salary =(select min(salary) from employee);

-- -- displays the branches containing atleast one manager
-- SELECT branch_id,branch_name
-- FROM branch
-- WHERE EXISTS 
-- (SELECT * FROM employee
-- WHERE job_desc="manager" AND branch.branch_id = employee.branch_id);


-- -- displays the branch info in which any employee gets more than 50K
-- SELECT branch_id,branch_name
-- FROM branch
-- WHERE branch_id = ANY
-- (SELECT branch_id FROM employee
-- WHERE salary>50000);

-- -- displays employees not working in chennai or coimbatore

-- SELECT * FROM employee 
-- WHERE branch_id <> ALL ( SELECT branch_id FROM branch
-- WHERE branch_name IN ("Chennai","madurai"));


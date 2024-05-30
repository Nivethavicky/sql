-- complex query handle
use sql_class;

select employee.emp_id , employee.ename, branch.br_name 
from employee inner join branch on employee.branch_id = branch.branch_id 
order by employee.emp_id;

create view emp_branch
as
select employee.emp_id , employee.ename, branch.br_name 
from employee inner join branch on employee.branch_id = branch.branch_id 
order by employee.emp_id;


select * from emp_branch;

select * from emp_branch where ename="Abdul";

select * from employee where br_name="sam";


create or replace view emp_branch
as
select employee.emp_id , employee.ename, branch.br_name 
from employee inner join branch on employee.branch_id = branch.branch_id ;

drop view emp_branch;


-- SHOW FULL TABLES
--  WHERE Table_Type LIKE 'VIEW';   it shows views in database


 -- SHOW FULL TABLES;   it shows all tables and views in database

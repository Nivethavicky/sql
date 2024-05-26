use sql_class;


create table branch(
branch_id int primary key	auto_increment,
branch_name varchar(100) not null,
branch_address varchar(100)
);

create table employee(
emp_id int primary key auto_increment,
emp_name varchar(50) not null,
job_desc varchar(50),
salary int,
branch_id int,
constraint FK_branchId foreign key(branch_id) references 
branch(branch_id)
);

select * from employee;
select * from branch;

insert into branch(branch_name,branch_address)  values("chennai","12 abc road");
insert into branch(branch_name,branch_address)  values("salem","50 xyz road");
insert into branch(branch_name,branch_address)  values("bangalore","100 pqr road");
insert into branch(branch_name,branch_address)  values("madurai","250 mno road");

insert into employee(emp_name,job_desc,salary,branch_id) values ("kavya" , "frontend", 250000,2);
insert into employee(emp_name,job_desc,salary,branch_id) values ("harini" , "backend", 50000,1);
insert into employee(emp_name,job_desc,salary,branch_id) values ("sam" , "database", 60000,3);
insert into employee(emp_name,job_desc,salary,branch_id) values ("sathish" , "python", 400000,1);
insert into employee(emp_name,job_desc,salary,branch_id) values ("ismail" , "data science", 70000,2);


select employee.emp_id , employee.eMP_Name, branch.brANCH_name 
from employee LEFT join branch on employee.branch_id = branch.branch_id 
order by employee.emp_id;

select employee.emp_id , employee.eMP_Name, branch.brANCH_name 
from employee RIGHT JOIN branch on employee.branch_id = branch.branch_id 
order by employee.emp_id;

select employee.emp_id , employee.eMP_Name, branch.brANCH_name 
from employee INNER join branch on employee.branch_id = branch.branch_id 
order by employee.emp_id;





-- without join query
select employee.emp_id , employee.eMP_name, branch.brANCH_name 
from employee,branch where employee.branch_id = branch.branch_id;

--  cross join
select employee.emp_id , employee.eMP_name, branch.brANCH_name 
from employee cross join branch;

select b.br_name , count(e.emp_id) emp_count
from branch as b
join employee as e
on b.branch_id = e.branch_id
group by e.branch_id;

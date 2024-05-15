show databases;


create database student;
use student;

show tables;

create table reg(id int ,name varchar(100) , age int , mobile bigint, city varchar(200));

-- DQL - Data Query Language   SELECT
select * from reg;

-- DML -Data Manipulation Language 
	-- INSERT,UPDATE,DELETE 

insert into reg(id, name, age,mobile, city) values (1 , "rajkumar", 27, 54554,"porur"),(2 , "guna", 50, 65434554,"omr"),
(3 , "john", 30, 656555,"chennai");

select * from reg;


update reg set mobile=123456 where id=1; 

delete from reg where id=2;

-- DDL - Data Definition Language  CREATE, ALTER, DROP and TRUNCATE.

-- add new column
	alter table reg add column department varchar(100);

select * from reg;

update reg set department="MECH" where id=3;

-- change column name
	alter table reg change mobile phone bigint;
    
-- change column data type
   alter table reg change mobile phone varchar(100); 
-- 				(or)
   ALTER TABLE reg MODIFY phone bigint;

-- change table name
ALTER TABLE reg RENAME TO register;

 

-- TO CHANGE NULL / NOTNULL auto increment primary key
 ALTER TABLE register  MODIFY id int NOT NULL auto_increment primary key;
   
insert into register(name, age,phone, city) values ("arun", 35, 5667545,"poonamallee"),("jana", 17, 25472,"guindy");   
select * from register;

-- remove column
ALTER TABLE reg DROP COLUMN department;   

--  mulitiple values show on where key word
SELECT * FROM register
WHERE name IN ('arun', 'guna');

select * from register;

select * from register where age >= 40 ;  

select * from reg order by id DESC limit 2;


-- delete from reg were city=null   (not working)
-- delete from reg where city is null   (working)




TRUNCATE TABLE reg;

select * from reg;
show tables;
DROP TABLE reg;

show databases;
DROP DATABASE student;
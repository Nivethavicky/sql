-- TCL  Transaction control language
-- savepoint
-- Rollback
-- commit

use sql_class;
select * from student;

-- START TRANSACTION;         Datastore Temperary 
-- SAVEPOINT save_name;
-- ROLLBACK TO save_name;
--  COMMIT;   datastore permanant

start transaction;

insert into student(id,name, city) values(6, 'raja', 'bangalore');

select * from student;

savepoint initial;

insert into student(id,name, city) values(6, 'raja', 'bangalore');

savepoint addstu;

update student set name="velu" where id=2;

savepoint update_student;

delete from student where id=3;

savepoint del_stu;


rollback to update_student;

rollback to initial;



commit;
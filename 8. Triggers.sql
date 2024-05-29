-- Types of Trigger
-- • DML Trigger (Insert, Update, Delete ...)
-- •  DDL Trigger (Create, Alter, Drop ...)
-- • LOGON Trigger (User session)

use sql_class;

create table purchase (productname varchar(255), stock int);

insert into purchase value ("pen", 100);
insert into purchase value ("pencil", 500);

select * from purchase;
select * from sales;

create table sales (dateofsales date, productname varchar(255), nos int);


Delimiter //
create trigger before_insert
before insert on sales
for each row
begin
	update purchase set stock = (stock - new.nos) where productname = new.productname;
    SELECT * from purchase;
end;
Delimeter;

DROP TRIGGER IF EXISTS before_insert;

insert into sales value (curdate(), "bolt", 50);

select * from sales;
select * from purchase;

---------------------------------------------------------------------------------- 
CREATE TABLE student_audit
(
Student_ID int,
Operation varchar(10),
UpdatedDate timestamp
);

Delimiter //
CREATE TRIGGER trg_stu_audit
AFTER INSERT ON student
for each row
	begin
		INSERT INTO student_audit value (new.id, "INSERT" , NOW());
	END;
Delimiter;
insert into student value(6, "Jana","Dindigul");

DROP TRIGGER IF EXISTS trg_stu_audit;

show triggers;
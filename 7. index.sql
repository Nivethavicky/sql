use sql_class;
show index from employee;

select * from employee;

ALTER TABLE employee
ADD CONSTRAINT UC_name UNIQUE (ename);

ALTER TABLE employee
DROP INDEX UC_name;

create index name_index on employee(ename);

ALTER TABLE employee
DROP INDEX name_index;


ALTER TABLE employee
add index(ename);



use student;

alter table reg add column joining_date date;

alter table reg add column date_time datetime;

ALTER TABLE reg ADD COLUMN tim TIME;

select * from reg;
update reg set tim="11:10:06" where id=1;

update register set date_time="2020-05-06 11:10:06" where id=1;

update register set joining_date="2023-06-01" where id=5;

select * from register;

alter table register add column currentDate timestamp;

select * from register;

select now();

insert into register(name, age, phone, city, joining_date, currentDate) values ("prem kumar", 3,25156,"sivakasi", "2018-03-07", now());

update register set joining_date="2020-05-06";
update register set joining_date="2020-05-06" where city="porur";


select now();


select minute(now());

select curdate();

select date_format(curdate(), "%d/%m/%Y");  -- Y

select date_format(curdate(), "%d-%m-%y");  -- y

select date_format(curdate(), "%d-%m-%y") AS DATE;  -- y


select datediff(curdate(), "2024-03-20") as days;

SELECT CURRENT_TIMESTAMP();

select date_add(curdate(), interval 5 DAY) as "after one day";

select date_add(curdate(), interval 1 week) as "after one week";

select date_add(curdate(), interval 1 month) as "after one month";
select date_add(curdate(), interval 1 year) as "after one year";

select curdate() "start date",
date_add(curdate(), interval 1 DAY) as "after one day", date_add(curdate(), interval 1 week) as "after one week",
date_add(curdate(), interval 1 month) as "after one month",date_add(curdate(), interval 1 year) as "after one year";









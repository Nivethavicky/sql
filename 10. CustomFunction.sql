
select ename, getBranchAddr(branch_id) from employee;

select ename, branch_id from employee;

select * from employee;

select * from branch;

Delimiter $$
create function getBranchAddr(id int)
returns varchar(100)
deterministic
begin
	declare fullAddr varchar(50);
	select concat(addr , ' ' , br_name) into fullAddr
	from branch
	where branch_id=id;
	return fullAddr;
END $$

delimiter ;


drop function if exists getBranchAddr;
show function status;

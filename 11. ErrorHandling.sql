
DROP PROCEDURE IF EXISTS insertBranch;

Delimiter //
create procedure insertBranch (
IN id int,
IN bname varchar(30),
In addr varchar(50)
)
begin
																			-- DECLARE duplicate entry condition for 1062; declare continue handler for  
																			-- continue (or)  exit  declare continue handler for sqlstate '23000'
		declare EXIT handler for 1062 
        begin
			select concat('duplicate key ',id, 'cannot insert into branch table');
		end;
	insert into branch
	values (id, bname, addr);
	select * from branch;
end //
delimiter ;

call insertBranch(1, 'madurai' , 'plot no-43 , villapuram housing board');	 

SELECT * from branch;


-- check mysql error code site

--------------------------------------------------------------------------------------------------

Delimiter //
create procedure insertBranch (
IN id int,
IN bname varchar(30),
In addr varchar(50)
)
begin
																			-- DECLARE duplicateentry condition for 1062; declare continue handler for  
 		declare continue handler for sqlstate '23000'                                    -- continue (or)  exit  
		begin
		select concat('duplicate key ',id, 'cannot insert into branch table');
		end;
	insert into branch
	values (id, bname, addr);
	select * from branch;
end //
delimiter ;

-----------------------------------------------------------------------------------

-- named conditions
Delimiter //
create procedure insertBranch (
IN id int,
IN bname varchar(30),
In addr varchar(50)
)
begin
		DECLARE duplicateentry condition for 1062; 
        declare continue handler for  duplicateentry
		begin
		select concat('duplicate key ',id, 'cannot insert into branch table');
		end;
	insert into branch
	values (id, bname, addr);
	select * from branch;
end //
delimiter ;


---------------------------------------------------------------------------
-- signal
Delimiter //
create procedure insertBranch (
IN id int,
IN bname varchar(30),
In addr varchar(50)
)
begin    
    declare continue handler for 1062                                  
		begin
			select concat('duplicate key ',id, 'cannot insert into branch table');
		end;
        
        if char_length(bname) < 4 then
        signal SQLSTATE '45000'
        set MESSAGE_TEXT = 'branch name too short';
        end if;
	
    insert into branch
	values (id, bname, addr);
	select * from branch;
end//
delimiter ;

call insertBranch(8, 'ma' , 'plot no-43 , villapuram housing board');	 


---------------------------------------------------------------------------
-- resignal

Delimiter //
create procedure insertBranch (
IN id int,
IN bname varchar(30),
In addr varchar(50)
)
begin

        declare continue handler for  1062
        RESIGNAL SET MESSAGE_TEXT= 'Duplicate key';       
		insert into branch
		values (id, bname, addr);
		select * from branch;
end //
delimiter ;

call insertBranch(1, 'madurai' , 'plot no-43 , villapuram housing board');	 
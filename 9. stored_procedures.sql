
select * from branch;
select * from employee;

delimiter $$
create procedure getAllBranches()
begin 	
	select * from branch ;
end$$
delimiter ;

call getAllBranches();

-- advantages:
-- 1. Reduce Network Traffic
-- 2.centralize bussiness logic
-- 3.Secure

-- Disadvantages:
-- 1. Resource Usage
-- 2. Hard to Maintain
-- 3. Difficult to Trouble Shoot


DROP procedure getAllBranches;
DROP procedure IF exists getAllBranches;

Drop procedure IF exists employeecnt;

select * from employee;

-- Variable Declare

DELIMITER $$
CREATE PROCEDURE employeecnt()
BEGIN
	DECLARE total INT DEFAULT 0;
	SELECT COUNT(emp_id)
	INTO total
	FROM employee;
	SELECT total;
END$$
DELIMITER ;

SELECT COUNT(emp_id)
	FROM employee;

CALL employeecnt();

-- pass parameter
-- IN
-- OUT
-- INOUT


-- IN
DELIMITER $$
CREATE PROCEDURE employeecnt (
IN jdesc VARCHAR(10)
)
BEGIN
	DECLARE total INT DEFAULT 0;
	SELECT COUNT(emp_id)
	INTO total
	FROM employee
	WHERE job_desc=jdesc;
	SELECT total;
END$$
DELIMITER ;

CALL employeecnt('hr');

SELECT * from employee;



--  OUT
DELIMITER $$
CREATE PROCEDURE employeecnt (
IN jdesc VARCHAR(10),
OUT total int
)
BEGIN
	SELECT COUNT(emp_id)
	INTO total
	FROM employee
	WHERE job_desc=jdesc;
END$$
DELIMITER ;

CALL employeecnt('ADMIN',@total);
select @total

------------------------------------------------------------------
-- INOUT

DELIMITER $$
CREATE PROCEDURE CounterIncrement (
	INOUT counter INT,
    IN increment INT
)
BEGIN
	SET counter = counter + increment; 
END$$
DELIMITER ;
 
SET @counter=5;
CALL CounterIncrement(@counter, 2);
SELECT @counter;

CALL CounterIncrement(@counter, 3);
SELECT @counter;


--  IF ELSE

DELIMITER //
CREATE PROCEDURE GetState(
	IN id INT
)
BEGIN
	IF id=1 OR id=2 THEN 
		SELECT 'TAMIL NADU';
		ELSEIF id=3 THEN 
			SELECT 'MAHARASHTRA';
		ELSE 
			SELECT 'ANDRA PRADESH';
	END IF;
END //
DELIMITER ;

CALL GetState(3);


--  SWITCH CASE

DELIMITER //
CREATE PROCEDURE GetState(
	IN id INT
)
BEGIN
	CASE id
		WHEN 3 THEN
			SELECT 'MAHARASHTRA';
		WHEN 4 THEN
			SELECT 'ANDRA PRADESH';
		ELSE 
			SELECT 'TAMIL NADU';
	END CASE;
END //
DELIMITER ;

CALL GetState(1);


-- LOOP
DELIMITER //
CREATE procedure loopSample()
BEGIN 
	DECLARE i INT;
    DECLARE str VARCHAR(50);
    SET i =1;
    SET str = '';

looplabel : LOOP
		IF i > 10 THEN
			LEAVE looplabel;
		END IF;

		SET str = concat(str, i , ' ');
		SET i = i + 1;
    END LOOP;
    SELECT str;
END //
DELIMITER ;

CALL loopSample;



DELIMITER //
CREATE procedure Whileloop()
BEGIN 
	DECLARE i INT;
    DECLARE str VARCHAR(50);
    SET i =1;
    SET str = '';
	WHILE i<=10 DO
        SET str = concat(str, i , ' ');
		SET i = i + 1;
    END WHILE;
    SELECT str;
END //
DELIMITER ;

CALL whileloop;


DELIMITER //
CREATE procedure repeatloop()
BEGIN 
	DECLARE i INT;
    DECLARE str VARCHAR(50);
    SET i =1;
    SET str = '';
	REPEAT
        SET str = concat(str, i , ' ');
		SET i = i + 1;
        UNTIL i > 10
    END REPEAT;
    SELECT str;
END //
DELIMITER ;

CALL repeatloop;





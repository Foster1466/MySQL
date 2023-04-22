delimiter $$
drop procedure if exists p3 $$
create procedure p3(in a int, in b int)
BEGIN
select a+b as Result;
END $$

delimiter ;
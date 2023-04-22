delimiter $$
drop procedure if exists p5 $$
create procedure p5(in a double, in b double, out res_add double, out res_sub double)
BEGIN
select a+b into res_add;
select a-b into res_sub;
END$$

delimiter ;
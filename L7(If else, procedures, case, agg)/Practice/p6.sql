delimiter $$
drop procedure if EXISTS p6 $$
create procedure p6(in num double, out res double)
BEGIN
if num<0 THEN
	select 'invalid input' as error_msg;
ELSE
	select sqrt(num) into res;
end if;
end $$

delimiter ;
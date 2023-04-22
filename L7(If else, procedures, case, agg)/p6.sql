-- wamp 6 to accept as input a number and return its square root

delimiter $$
drop procedure if exists p6 $$
create procedure p6(in num double, out res double)
begin
if num<0 then
	select 'invalid input' as ERROR_MSG;
else
	select sqrt(num) into res;
end if;
end $$

delimiter ;
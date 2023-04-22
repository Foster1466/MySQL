-- wamp 6 to accept as input a number and return its square root

delimiter $$
drop procedure if exists p7 $$
create procedure p7(inout num double)
begin
if num<0 then
	select 'invalid input' as ERROR_MSG;
else
	select power(num, 0.5) into num;
end if;
end $$

delimiter ;
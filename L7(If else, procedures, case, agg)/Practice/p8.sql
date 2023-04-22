delimiter $$
drop procedure if exists p8 $$
create procedure p8(in num int)
BEGIN
if num%2=0 then 
	select 'Even' as MSG;
ELSE
	select 'odd' as msg;
end if;
end $$

delimiter ;
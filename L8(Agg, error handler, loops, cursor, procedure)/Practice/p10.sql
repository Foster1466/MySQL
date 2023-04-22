delimiter $$
drop procedure if exists p10$$
create procedure p10(num int)
begin
declare i int default 1;
declare sum int default 0;

if num<0 then
	select 'invalid input' as msg;
else
	repeat
		set sum= sum + i;
		set i= i+1;
	until i>num
	end repeat;
	select concat('sum= ', sum) as RESULT;
end if;
end $$
delimiter ;
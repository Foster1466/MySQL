delimiter $$
drop procedure if exists p9$$
create procedure p9(num int)
begin
declare i int default 1;
declare sum int default 0;

if num<0 then
	select 'invalid input' as msg;
else
	while i<=num do
		set sum= sum + i;
		set i= i+1;
	end while;
	select concat('sum= ', sum) as RESULT;
end if;
end $$
delimiter ;
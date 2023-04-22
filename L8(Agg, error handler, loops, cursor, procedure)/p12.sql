-- wams to find the reverse of the given number - using repeat loop
-- 354 12

delimiter $$
drop procedure if exists p12$$
create procedure p12(num int)
begin
declare digit int default 0;
declare reverse int default 0;

if num < 0 then
	select 'Invalid input' as MSG;
else
	repeat
		set digit= num % 10;
		set reverse = reverse * 10 + digit;
		set num= num DIV 10;
	until num<=0
	end repeat;
	select concat("Reverse= ", reverse) as RESULT;
end if;
end$$

delimiter ;
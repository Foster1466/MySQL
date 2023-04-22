-- wams to find the sum of first 'n' +ve integers
-- 5	1+2+3+4+5= 15

delimiter $$
drop procedure if exists p10$$
create procedure p10(num int)
begin
declare i int default 1;
declare sum int default 0;

if num < 0 then
	select 'Invalid input' as MSG;
else
	repeat
		set sum= sum +i;
		set i= i+1;
	until i > num
	end repeat;
	select concat("Sum= ", sum) as RESULT;
end if;
end$$

delimiter ;
-- wams to find the sum of digits using while loop
-- 354 12

delimiter $$
drop procedure if exists p11$$
create procedure p11(num int)
begin
declare i int default 1;
declare sum int default 0;
declare digit int default 0;
if num < 0 then
	select 'Invalid input' as MSG;
else
	while num >0 do
		set digit= num % 10;
		set sum= sum + digit;
		set num= floor(num / 10);	-- or num DIV 10
	end while;
	select concat("Sum= ", sum) as RESULT;
end if;
end$$

delimiter ;
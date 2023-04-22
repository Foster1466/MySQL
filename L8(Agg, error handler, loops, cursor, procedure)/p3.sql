-- wams to accept as i/p a string and find if its 
-- a palindrome nitin, malayalam, madam, racecar

delimiter $$
drop procedure if exists p3 $$
create procedure p3(str varchar(200))
begin

if reverse(str) = str then
	select "Yes" as MSG;
else
	select "No" as msg;
end if;
end $$
delimiter ;
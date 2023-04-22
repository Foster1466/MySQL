-- wamp 11 to accept as year and find if its a leap year: 365.24 * 4 = 1 day
-- if its non-century year then it comes after 4 years eg: 2016,2020,2400

delimiter $$
drop procedure if exists p11 $$
create procedure p11(year int)
begin
declare b1 boolean default false;
declare b2 boolean default false;

set b1= (year % 100 = 0) and (year % 400 = 0);
set b2=	(year % 100 != 0) and (year % 4 = 0);

if b1 or b2 then
	select 'yes' as REPLY;
else
	select 'no' as REPLY;
end if;
end $$
delimiter ;
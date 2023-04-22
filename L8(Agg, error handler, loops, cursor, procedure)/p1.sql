-- wams to find sqrt of a number provided as argument

delimiter $$
drop procedure if exists p1$$
create procedure p1(num double)
begin
declare res double default 0.0;

if num<0 then
	select "Invalid input" as ERROR;
else
	set res= sqrt(num);
	select concat("res= ", res) as RESULT;
end if;
end$$
delimiter ;
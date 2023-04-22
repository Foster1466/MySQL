delimiter $$

drop procedure if exists p1$$
create procedure p1(num double)
BEGIN
declare res double default 0.0;

if num<0 then
	select 'invalid input' as ERROR;
ELSE	
	set res = sqrt(num);
	select concat('res= ', res) as result;
end if;
end$$
delimiter ;

delimiter $$

drop procedure if exists p3$$
create procedure p3(str varchar(200))
BEGIN

if reverse(str)=str THEN
	select 'yes' as msg;
ELSE
	select 'no' as msg;
end if;
end$$

delimiter ;
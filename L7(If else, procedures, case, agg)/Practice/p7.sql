delimiter $$
drop procedure if exists p7 $$
create procedure p7(inout n double)
BEGIN
if n<0 then 
select 'invalid input' as ERROR_msg;
ELSE
select power(n, 0.5) into n;
end if;
end$$

delimiter ;
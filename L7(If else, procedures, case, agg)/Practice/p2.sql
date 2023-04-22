delimiter $$
drop procedure if exists p2 $$
create procedure p2(a int, b int)
BEGIN
declare res int default 0;
set res = a+b;
select res as RESULT;
end $$

delimiter ;
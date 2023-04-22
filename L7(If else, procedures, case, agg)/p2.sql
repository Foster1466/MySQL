-- WAMP 2 to accept as input two integers and display their addition

delimiter $$
drop procedure if exists p2 $$
create procedure p2(a int, b int)
begin
declare res int default 0;
set res = a + b;
select res as RESULT;
end$$

delimiter ;
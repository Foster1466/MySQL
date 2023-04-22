-- wamp to accept as input 2 integera and display their addition

delimiter $$
drop procedure if exists p3 $$
create procedure p3(in a int, in b int)
begin
select a + b as RESULT;
end $$

delimiter ;
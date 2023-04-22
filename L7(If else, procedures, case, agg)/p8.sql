-- wamp 8 to accept as input a integer and display if its even or odd

delimiter $$
drop procedure if exists p8 $$
create procedure p8(in num int)
begin
if num%2 = 0 then
	select 'Even' as msg;
else
	select 'Odd' as msg;
end if;

end $$

delimiter ;
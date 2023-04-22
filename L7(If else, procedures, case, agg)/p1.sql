-- wamp 1 to wish good morning

delimiter $$

drop procedure if exists p1 $$
create procedure p1()
begin
select 'good morning' as msg;
end$$

delimiter ;
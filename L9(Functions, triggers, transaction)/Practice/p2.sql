delimiter $$
drop procedure if exists p2$$
create procedure p2(in loc varchar(20), out nos int)
begin

select count(*) into nos from student where location=loc;

end$$
delimiter ;
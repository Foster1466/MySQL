-- wamp p2 to ount the number of students from particular location

delimiter $$
drop procedure if exists p2$$

create procedure p2(in loc varchar(30), out nos int)
begin

select count(*) into nos from student where location= loc;

end$$

delimiter ;
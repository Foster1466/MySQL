-- wamp p1 to ount the number of students

delimiter $$
drop procedure if exists p1$$

create procedure p1(out nos int)
begin

select count(*) into nos from student;

end$$

delimiter ;
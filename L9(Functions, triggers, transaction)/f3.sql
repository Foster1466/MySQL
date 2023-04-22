-- wamf to find the max of the marks use max()
delimiter $$

drop function if exists f3 $$

create function f3() returns int deterministic
begin

	declare ma int default 0;
	select max(marks) into ma from student;
	return ma;

end $$

delimiter ;
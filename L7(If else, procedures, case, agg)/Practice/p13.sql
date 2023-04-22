
delimiter $$
drop procedure if exists p13 $$
create procedure p13(marks int)
begin
declare grade varchar(30) default '';

case when marks<0 or marks>100 then set grade='invalid marks';
	when marks>80	then	set grade='A';
	when marks>60	then	set grade='B';
	when marks>40	then	set grade='D';
	else		set grade='C';
end case;

select concat('marks= ', marks, 'grade= ', grade) as RESULT;

end $$
delimiter ;
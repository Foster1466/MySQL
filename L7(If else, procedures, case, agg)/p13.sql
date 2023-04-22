-- wamp 13 to read marks between 0 and 100... if marks > 80 --> Grade A, marks > 60 --> Grade B
-- If marks > 40 --> Grade C else Grade D

delimiter $$
drop procedure if exists p13 $$
create procedure p13(marks int)
begin
declare grade varchar(20) default '';

case when marks<0 or marks>100 then	set grade= 'Invalid marks';
	when marks>80	then		set grade= ' Grade A';
	when marks>60	then		set grade= ' Grade B';
	when marks>40	then		set grade= ' Grade C';
	else				set grade= ' Grade D';
end case;

select concat('marks= ', marks, 'grade= ', grade) as RESULT;

end $$
delimiter ;
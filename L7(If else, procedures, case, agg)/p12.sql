-- wamp 12 to read marks between 0 and 100... if marks > 8 --> Grade A, marks > 60 --> Grade B
-- If marks > 40 --> Grade C else Grade D


delimiter $$
drop procedure if exists p12 $$
create procedure p12(marks int)
begin
declare grade varchar(20) default '';

if marks<0 or marks>100 then
	set grade= 'Invalid marks';
elseif marks>80 then
	set grade= ' Grade A';
elseif marks > 60 then
	set grade= ' Grade B';
elseif marks >40 then
	set grade= ' Grade C';
else
	set grade= ' Grade D';
end if;

select concat('marks= ', marks, 'grade= ', grade) as RESULT;

end $$
delimiter ;
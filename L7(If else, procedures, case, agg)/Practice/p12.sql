delimiter $$
drop procedure if exists p12 $$
create procedure p12(marks int)
BEGIN
declare grade varchar(20) default '';

if marks<0 or marks>100 THEN
	set grade='invalid marks';
elseif marks>80 then 
	set grade='A';
elseif marks>60 THEN
	set grade='B';
elseif marks>40 then 
	set grade='C';
ELSE
	set grade='D';
end if;
select concat('marks= ', marks,' grade= ', grade) as result;
end $$

delimiter ;
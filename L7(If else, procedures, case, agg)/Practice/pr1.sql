delimiter $$
drop procedure if EXISTS pr1$$
create procedure pr1(r int)
BEGIN
declare c int default 0;
declare n varchar(20) default '';
declare m int default 0;
declare re varchar(10) default '';

select count(c) into c from student where rno=r;
if c=0 then 
	select concat(r, ' does not exist ')as error;
ELSE
	select name, marks into n, m from student where rno=r;
	if m>60 THEN
		set re='Pass';
	else
		set re='Fail';
	end if;
	select concat('rno= ', r, 'name= ', n, 'result= ', re);
end if;

END$$
delimiter ;
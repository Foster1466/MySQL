delimiter $$
use db_27sep2020 $$

drop procedure if exists pr1 $$
create procedure pr1(r int)
begin
declare c int default 0;
declare n varchar(20) default '';
declare m int default 0;
declare re varchar(10) default '';

select count(*) into c from student where rno=r;
if c=0 then
	select concat(r, ' does not exists ') as ERROR;
else
	select name, marks into n,m from student where rno=r;
	if m>60 then
		set re= 'Pass';
	else
		set re= 'Fail';
	end if;
	select concat('rno= ', r, 'name= ', n, ' result= ', re);
end if;
end $$
delimiter ;
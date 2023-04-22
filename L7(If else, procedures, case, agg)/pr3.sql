delimiter $$
use db_27sep2020 $$

drop procedure if exists pr3$$
create procedure pr3(r int)
begin
declare c int default 0;
declare e varchar(5) default '';
declare re varchar(20) default '';

select count(*) into c from student where rno = r;
if c=0 then
	select concat(r, ' does not exists ') as ERROR;
else
	select eyear into e from student where rno= r;
	case e
		when 'fe' then set re= '5 days';
		when 'se' then set re = '4 days';
		else		set re = '2 days';
	end case;
	select concat('number of holidays= ', re);
end if;
end$$
delimiter ;
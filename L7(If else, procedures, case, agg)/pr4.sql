delimiter $$
use db_27sep2020 $$

drop procedure if exists pr4$$
create procedure pr4(r int)
begin
declare c int default 0;
declare m int default 0;
declare re varchar(20) default '';

select count(*) into c from student where rno = r;
if c=0 then
	select concat(r, ' does not exists ') as ERROR;
else
	select marks into m from student where rno= r;
	case 
		when m>70 then set re= 'Grade A';
		when m>60 then set re = 'Grade B';
		else		set re = 'Grade C';
	end case;
	select concat('Grade= ', re);
end if;
end$$
delimiter ;
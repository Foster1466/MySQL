delimiter $$

drop procedure if exists pr3$$
create procedure pr3(r int)
begin
declare c int default 0;
declare re varchar(20) default '';
declare e varchar(10) default '';

select count(*) into c from student where rno=r;
if c=0 then 
	select concat(r, ' does not exitsts ') as error;
ELSE	
	select eyear into e from student where rno=r;
	case e
		when 'fe' then set re= '5 days';
		when 'se' then set re = '4 days';
		else		set re = '2 days';
	end case;
	select concat('number of holidays= ', re);
end if;

end$$
delimiter ;
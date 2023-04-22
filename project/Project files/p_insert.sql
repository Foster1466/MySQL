delimiter $$
drop procedure if exists p_insert $$
create procedure p_insert(c int, na varchar(30), a int,p bigint, g varchar(10), b double(10,2), d varchar(20))
begin

declare co int default 0;
select count(*) into co from bmi where name = na;

if co= 0 then
	insert into bmi values(c, na, a, p, g, b, d);
	select 'Insert successful' as msg;
else
	update bmi set age= a, phone= p, gender= g, bmi= b, date= d;
	select 'Update successful' as msg;
end if;

end $$

delimiter ;
delimiter $$
drop procedure if exists p10 $$
create procedure p10(n1 int, n2 int, n3 int)
BEGIN
declare res int default 0;

if n1>n2 THEN
	set res=n1;
ELSE
	set res=n2;

end IF;

if n3>res THEN
	set res=n3;
end if;

select concat('max of 3= ', res) as info;

select concat('another max of 3= ', greatest(n1, n2,n3)) as info;

end $$

delimiter ;
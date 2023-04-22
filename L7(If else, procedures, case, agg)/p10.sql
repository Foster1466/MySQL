-- wamp 10 to accept as input 3 int and display the max of three

delimiter $$
drop procedure if exists p10 $$
create procedure p10(n1 int, n2 int, n3 int)
begin
declare res int default 0;

-- compare two num
if n1>n2 then
	set res = n1;
else 
	set res = n2;

end if;

-- compare with 3rd num
if n3 > res then 
	set res = n3;
end if;

select concat('max of 3= ', res) as INFO;

select concat('another max of 3= ', greatest(n1,n2,n3)) as INFO;

end $$

delimiter ;
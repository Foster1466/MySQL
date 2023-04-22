delimiter $$
drop procedure if exists p4 $$
create procedure p4(in n1 int, in n2 int, out res int)
BEGIN
select n1+n2 into res;
end $$

delimiter ;
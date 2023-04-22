-- wamp 5 to accept as input 2 integers and display their addition and subtraction

delimiter $$
drop procedure if exists p5 $$
create procedure p5(in n1 double, in n2 double, out res_add double, out res_sub double)
begin
select n1 + n2 into res_add;
select n1 - n2 into res_sub;
end $$

delimiter ;
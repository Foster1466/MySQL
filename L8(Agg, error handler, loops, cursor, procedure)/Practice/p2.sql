delimiter $$



drop procedure if exists p2 $$
create procedure p2(radius double)
BEGIN
declare area double default 0.0;
declare circum double default 0.0;

if radius <= 0 THEN
	select 'invalid input' as ERROR;
ELSE
	set area=round(pi()*power(radius, 2),2);
	set circum = round(2*pi()*radius, 2);
	select concat("area= ", area, " circum= ", circum) as RESULT;
end if;
end$$


delimiter ;
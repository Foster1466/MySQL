-- wams to accept as i/p radius and find area and circum of circle 
-- ans shud be rounded to 2 digits precision.

delimiter $$
drop procedure if exists p2 $$
create procedure p2(radius double)
begin
declare area double default 0.0;
declare circum double default 0.0;

if radius <= 0 then
	select "Invalid input" as ERROR;
else
	set area= round(pi() * power(radius, 2),2);
	set circum= round(2 * pi() * radius,2);
	select concat("area= ", area, " circum= ", circum) as RESULT;

end if;
end $$
delimiter ;
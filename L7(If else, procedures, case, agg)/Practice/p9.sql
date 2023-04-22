delimiter $$
drop procedure if exists p9$$
create procedure p9(in radius double)
BEGIN
declare area double default 0.0;
declare circum double default 0.0;

set area=pi()*power(radius,2);
set circum=2*pi()*radius;

set area= round(area, 2);
set circum= round(circum, 2);

select area as 'AREA';
select circum as 'CIRCUMFERENCE';

select concat('area= ', area, ', circum= ', circum) as msg;

end$$

delimiter ;
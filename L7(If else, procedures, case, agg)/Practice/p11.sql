delimiter $$
drop procedure if exists p11$$
create procedure p11(year int)
BEGIN
declare b1 boolean default false;
declare b2 boolean default false;

set b1=(year%100=0) and (year%400=0);
set b2=(year%100!=0) and year%4=0;

if b1 or b2 then 
    select 'yea' as reply;
ELSE
    select 'no' as reply;
end if;
end $$

delimiter ;
delimiter $$
drop procedure if exists p5$$
create procedure p5(r int, n varchar(30), m int)
begin

declare dup_key condition for 1062;
declare roll_is_zero condition for sqlstate '11111';

declare exit handler for dup_key
select 'rno already exists' as ERROR;

declare exit handler for 1264
select 'rno shld be between 1 and 255' as ERROR;

declare exit handler for 1048
select 'rno shld not be null' as ERROR;

declare exit handler for roll_is_zero
select 'rno shld not be 0' as ERROR;

declare exit handler for SQLSTATE '22222'
select 'length of name shul be min 2 and max 20' as ERROR;

declare exit handler for SQLSTATE '33333'
select 'name shud not be null' as ERROR;

declare exit handler for SQLSTATE '44444'
select 'name shud contain only letters' as ERROR;

select 'process begin' as msg;

if r=0 then 
	signal sqlstate '11111';
end if ;

if n is null then 
	signal sqlstate '33333';
end if;

if length(n) <2 or length(n)>20 THEN
	signal sqlstate '22222';
end if; 

if n regexp '[:digit:]' then 
	signal sqlstate '44444';
end if;

insert into student values(r, n, m);
select 'record inserted' as Success;

end $$

delimiter ;
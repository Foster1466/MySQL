-- wams insert record into student

delimiter $$
drop procedure if exists p5 $$
create procedure p5(r int, n varchar(30), m int)
begin

declare dup_key condition for 1062;
declare range_violation condition for 1264;
declare null_value condition for 1048;
declare roll_is_zero condition for SQLSTATE '11111';

declare exit handler for dup_key
select 'rno already exists' as ERROR;

declare exit handler for range_violation
select 'rno should be b/w 1 and 255' as ERROR;

declare exit handler for null_value
select 'rno should not be null' as ERROR;

declare exit handler for SQLSTATE rno_is_zero
select 'rno should not be 0' as ERROR;

declare exit handler for SQLSTATE '22222'
select 'length of name should be min 2 and max 20' as ERROR;

declare exit handler for SQLSTATE '33333'
select 'name should not be null' as ERROR;

declare exit handler for SQLSTATE '44444'
select 'name should contain only letters' as ERROR;

select 'process begin' as MSG;

if r=0 then
	signal SQLSTATE '11111';
end if;

if length(n) < 2 or length(n) > 20 then
	signal SQLSTATE '22222';
end if;

if n is null then
	signal SQLSTATE '33333';
end if;

if n regexp '[:digit:]' then
	signal SQLSTATE '44444';
end if;

insert into student values(r, n, m);
select 'record inserted' as SUCCESS;

end $$
delimiter ;
delimiter $$

drop procedure if exists p6$$
create procedure p6(i int, n varchar(200), s decimal(10,2), e varchar(300))
begin

declare null_value condition for 1048;
declare duplicate_value condition for 1062;

declare exit handler for null_value
select 'eid cannot be null' as FAILURE;

declare exit handler for duplicate_value
select 'eid already exists' as FAILURE;

declare exit handler for SQLSTATE '12345'
select 'eid should be > 0' as FAILURE;

declare exit handler for SQLSTATE '12346'
select 'ename cannot be null' as FAILURE;

declare exit handler for SQLSTATE '12347'
select 'name length should be min 2' as FAILURE;

declare exit handler for SQLSTATE '12348'
select 'name should contain only aplhabets' as FAILURE;

declare exit handler for SQLSTATE '12350'
select 'invalid email' as Failure;

if i<=0 then
	signal SQLSTATE '12345';
end if;

if n is null then
	signal SQLSTATE '12346';
end if;

if length(n) < 2 then
	signal SQLSTATE '12347';
end if;


if n regexp '^[0-9]*$' then
	signal SQLSTATE '12348';
end if;

if s is null or s<8000 then
	signal SQLSTATE '12349';
end if;

if e is null or e not regexp '[a-zA-Z0-9]@[a-zA-Z]+\.(com|net|edu)' then
	signal SQLSTATE '12350';
end if;

insert into employee values(i, n, s, e);
select 'record inserted' as SUCCESS;
end $$

delimiter ;
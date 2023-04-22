use db_11oct2020;
delimiter $$
drop procedure if exists t11;
create procedure t11(anum int, amount decimal(10,2))
begin
declare issue boolean default false;

declare continue handler for sqlexception
begin
	show errors;
	set issue= true;
end;
start transaction;
select 'process started' as MSG;
update sa set balance = balance + amount where ano= anum;
update ca set balance = balance - amount where ano= anum;

if ! issue then
	commit;
	select 'transaction successful' as MSG;
else 
	rollback;
	select 'transaction failed' as MSG;
end if;

select 'process ended' as MSG;

select * from sa where ano= anum;
select * from ca where ano= anum;
end $$

delimiter ;
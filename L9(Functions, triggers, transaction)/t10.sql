use db_11oct2020;

delimiter $$
drop procedure if exists t10;
create procedure t10(anum int, amount decimal(10,2))
begin

select 'process started' as MSG;
update sa set balance = balance + amount where ano= anum;
update ca set balance = balance - amount where ano= anum;
select 'process ended' as MSG;

select * from sa where ano= anum;
select * from ca where ano= anum;
end $$

delimiter ;
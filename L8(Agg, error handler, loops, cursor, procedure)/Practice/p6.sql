delimiter $$
drop procedure if exists p6$$
create procedure p6(i int, n varchar(200), s decimal(10,2), e varchar(300))
begin
	declare null_value condition for 1048;
	declare duplicate_value condition for 1062;

	declare exit handler for null_value
	select 'eid cannot be null' as Failure;

	declare exit handler for duplicate_value
	select 'eid already exists' as Failure;	
	
	declare exit handler for sqlstate '12345'
	select 'eid shud be > 0' as Failure;
		
	if i <= 0 then
		signal sqlstate '12345';
	end if;

	insert into employee values(i, n, s, e);
	select 'record inserted' as SUCCESS;	

end$$
delimiter ;
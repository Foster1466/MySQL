use db_11oct2020;
drop table if exists employee;
create table if not exists employee(
eid int primary key,
ename varchar(20),
esalary decimal(10,2),
ephone bigint
);

/*
	create a before insert trigger for following:
		eid 	--> <=0
		ename	--> null / length 2
		esalary	--> min salary 8k
		ephone	--> 10 digits
*/

delimiter $$

drop trigger if exists t2 $$
create trigger t2 before insert on employee for each row
begin
	if new.eid <= 0 then
		signal sqlstate '11111' set message_text= 'eid shud be >= 1';
	end if;
	if length(new.ename) < 2 or new.ename is null then
		signal sqlstate '22222' set message_text= 'Invalid name';
	end if;
	if new.esalary < 8000 then
		signal sqlstate '34567' set message_text= 'Invalid salary';
	end if;
	if length(new.ephone) < 10 or new.ephone is null then
		signal sqlstate '44444' set message_text= 'Invalid phone';
	end if;
	
end $$

delimiter ;
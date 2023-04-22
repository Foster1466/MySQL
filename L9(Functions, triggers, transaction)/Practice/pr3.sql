use example;
drop table if exists employee;
create table employee(
eid int primary key,
ename varchar(20),
esalary decimal(10,2),
ephone int
);

delimiter $$

drop trigger if exists t2 $$
create trigger t2 before insert on employee for each row
begin
	if new.eid <= 0 then
		signal sqlstate '11111' set message_text= 'eid shud be >=1';
	end if;
	if length(new.ename) <2 or new.ename is null then
		signal sqlstate '22222' set message_text= 'Invalid name';
	end if;
	if new.esalary < 8000 then
		signal sqlstate '33333' set message_text= 'Wrong salary';
	end if;
end $$
delimiter ;
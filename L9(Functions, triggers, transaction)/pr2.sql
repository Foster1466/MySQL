drop database if exists db_11oct2020;
create database if not exists db_11oct2020;
use db_11oct2020;

create table if not exists student
(
rno int unsigned primary key auto_increment,
name varchar(20),
marks tinyint unsigned,
location varchar(20) default 'mumbai',
gender enum('m','f'),
prog_lang set('java','android','python','django','golang')
);

delimiter $$

drop trigger if exists t1 $$
create trigger t1 before insert on student for each row
begin
	if new.row <= 0 then
		signal SQLSTATE '12345' set message_text= 'rno shud be >= 1';
	end if;
	if length(new.name) <2 or new.name is null or (not new.name regexp '^[A-Za-z]+$') then
		signal sqlstate '23456' set message_text= 'invalid name';
	end if;
	if new.marks < 0 or new.marks>100 then
		signal sqlstate '24234' set message_text= 'Invalid marks';
	if length(new.location)<4 or new.location is null then
		signal sqlstate '45678' set message_text= 'Invalid location';
	end if;
end $$

delimiter ;
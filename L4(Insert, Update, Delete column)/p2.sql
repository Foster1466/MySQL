drop database if exists emp_db;
create database if not exists emp_db;
use emp_db;

create table emp(
id int primary key,
name varchar(100),
salary decimal(8,2)
);
desc emp;

insert into emp values(10, 'yogesh', 4500);

insert into emp values(20, 'mahesh',3600), (30,'sailesh',4000);
replace into emp values(30, 'ramesh',3800);
update emp set salary = salary * 1.10 where id = 10;
update emp set salary = salary * 1.20 order by salary limit 1;
delete from emp where id=30;
delete from emp order by salary desc limit 1
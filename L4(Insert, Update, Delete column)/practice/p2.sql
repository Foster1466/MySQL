drop DATABASE if exists emp_db;
create DATABASE if not exists emp_db;
use emp_db;

create table if not EXISTS emp
(
id int PRIMARY KEY,
name varchar(100),
salary decimal(8,2)
);
desc emp;

insert into emp values(10, 'yogesh', 4500);
select * from emp;

insert into emp values(20, 'mahesh', 3600), (30, 'shailesh',4000);
select * from emp;

replace into emp values(30,'ramesh',3800);
select * from emp;

update emp set salary=salary*1.10 where id=10;
select * from emp;

update emp set salary=salary*1.20 order by salary limit 1;
select * from emp;

delete from emp where id=30;
select * from emp;

delete from emp order by salary desc limit 1;
select * from emp;
drop database if exists kit;
create database if not exists kit;
use kit;

create table department
(
did int primary key,
dname varchar(10)
);
insert into department values(10,'comps');
insert into department values(20,'extc');

create table student
(
rno int primary key,
name varchar(20),
did int,
foreign key(did) REFERENCES department(did) on delete cascade on update CASCADE
);
insert into student values(101, 'yog', 10);
insert into student values(102, 'yoga', 20);
insert into student values(103, 'yogi', 10);
insert into student values(104, 'yogg', 20);

select * from department;
select * from student;

update department set did=25 where did=20;

select * from department;
select * from student;
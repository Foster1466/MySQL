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
foreign key(did) references department(did)
);
insert into student values(101, 'yogita', 10);
insert into student values(102, 'sangita', 20);


select * from department;
select * from student;
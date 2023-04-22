drop database if exists db_13sep2020;
create database if not exists db_13sep2020;
use db_13sep2020;

create table if not exists department(
did int unsigned primary key,
dname varchar(20) not null,
dhod varchar(30)
);
desc department;

insert into department values(10,'comps', 'vijay');
insert into department values(20,'it', 'seema');
insert into department values(30,'extc', 'raj');

create table if not exists student(
rno int unsigned primary key,
name varchar(20) not null,
gender enum('m','f'),
location varchar(20) default 'mumbai',
eyear enum('fe','se','te','be'),
did int unsigned,
marks tinyint unsigned,
foreign key(did) references department(did)
);

insert into student values(101, 'amit', 'm', default, 'fe', 10, 89);
insert into student values(102, 'tina', 'f', 'thane', 'se', 20, 98);
insert into student values(103, 'rina', 'f', default, 'fe', 30, 34);
insert into student values(104, 'sumit', 'm', default, 'fe', 10, 56);
insert into student values(105, 'sunny', 'm', 'thane', 'se', 20, null);
insert into student values(106, 'bunny', 'm', 'thane', 'fe', 30, 88);
insert into student values(107, 'vijay', 'm', default, 'se', 10, 65);
insert into student values(108, 'jayshree', 'f', default, 'fe', 10, null);
insert into student values(109, 'anushka', 'f', 'thane', 'se', 20, 88);
insert into student values(110, 'smita', 'f', default, 'se', 20, 99);

select * from department;
select * from student;
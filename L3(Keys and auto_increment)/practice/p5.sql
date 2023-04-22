drop DATABASE if exists kit;
CREATE DATABASE if not exists kit;
use kit;

create table if not EXISTS department
(
did int PRIMARY KEY,
dname varchar(10)
);
insert into department values(10,'comps');
insert into department values(20,'extc');

create table student
(
rno int PRIMARY KEY,
name varchar(20),
did int,
FOREIGN KEY(did) REFERENCES department(did)
);
insert into student values(101, 'yog', 10);
insert into student values(102, 'sangita', 20);

select * from department;
select * from student;
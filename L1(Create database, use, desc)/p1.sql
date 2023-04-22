-- this is practical number 1

create database db1_16aug2020;
use db1_16aug2020;

create table student(rno int primary key, name varchar(20));
desc student;
select * from student;

insert into student values(10,'amit');
insert into student values(20,'sumit');
select * from student;
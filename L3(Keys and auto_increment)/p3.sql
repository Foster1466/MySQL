drop database if exists students_db;
create database if not exists students_db;
use students_db;

create table if not exists student
(
rno int unsigned unique,
name varchar(20) not null,
phone int unsigned not null,
email varchar(30),
engg_year enum('fe', 'se', 'te', 'be'),
constraint uk1_email unique(email)
);
desc student;
show index from student\G

alter table student add constraint uk2_phone unique(phone);
desc stuent;
show index from student\G

alter table student drop index uk1_email;
desc student;
show index from student\G
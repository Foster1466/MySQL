drop database if exists db_18oct2020;
create database if not exists db_18oct2020;
use db_18oct2020;

create table student
(
rno int unsigned primary key,
name varchar(20),
marks tinyint unsigned,
eyear enum ('fe', 'se', 'te', 'be'),
location varchar(30) default 'mumbai'
);

insert into student values(10, 'amit', 98, 'fe', 'thane'),
(20, 'sumit', 79, 'se', 'mumbai'),
(30, 'rumit', 63, 'fe', 'thane'),
(40, 'seema', 81, 'se', 'thane'),
(50, 'reema', 45, 'fe', 'mumbai'),
(60, 'tina', 95, 'be', 'thane')
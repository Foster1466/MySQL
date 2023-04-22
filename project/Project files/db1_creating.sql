drop database if exists project_db;
create database if not exists project_db;
use project_db;
create table if not exists bmi(
id int unsigned primary key auto_increment,
name varchar(30) not null,
age tinyint unsigned not null,
phone int unsigned,
gender enum('Male', 'Female'),
height double unsigned not null,
weight double unsigned not null
);
desc bmi;

create table test(
id int unsigned primary key auto_increment,
name varchar(30) not null,
age tinyint unsigned not null
); 

alter table bmi add column phone int unsigned not null after age;
alter table bmi modify name varchar(30) not null unique;


select * from bmi;
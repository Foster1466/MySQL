-- this is soln to practical 2
drop database if exists bike_db;
create database if not exists bike_db;
select 'db_created' as MSG;

use bike_db;
create table if not exists bike
(
id int unsigned,
model_name varchar(20),
color enum('red','blue','black', 'white') default 'black',
options set('light', 'helmet','lock')
);
select 'tb created' as MSG;

select 'table structure' as MSG;
desc bike;

insert into bike values(10, 'BMX', 'red', 'light');

select 'table content' as MSG;
select * from bike;
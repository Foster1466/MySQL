drop database if exists bike_db;
create DATABASE if not EXISTS bike_db;
select 'db_created' as msg;

use bike_db;
create table if not exists bike
(
id int unsigned,
model_name varchar(20),
color enum('red','blue', 'black','white') default 'black',
options set('light','helmet','lock')
);
select 'tb created' as msg;

select 'table structure' as msg;
desc bike;

insert into bike values(10, 'BMX', 'red', 'light');

select 'table content' as msg;
select * from bike;
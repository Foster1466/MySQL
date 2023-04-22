-- this is soln to practical 1
drop database if exists ticket_db;
create database if not exists ticket_db;
select 'db created' as MSG;

use ticket_db;
create table if not exists ticket
(
id bigint unsigned,
title varchar(255) not null,
priority enum('low', 'medium', 'high')
);
select 'tb created' as MSG;

select 'table structure' as MSG;
desc ticket;

insert into ticket values(10, 'cold food', 'medium');
insert into ticket values(20, 'less qty', 'low');
select 'table content' as MSG;
select * from ticket;
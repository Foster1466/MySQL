drop database if exists variety_infotech_db;
create database if not exists variety_infotech_db;
use variety_infotech_db;

create table if not exists products(
pid int primary key,
pname varchar(20),
pprice decimal(10,2),
pstock int
);

insert into products values(101, 'hdd', 5200.00, 10);
insert into products values(102, 'cd', 180.00, 20);
insert into products values(103, 'speaker', 1500.00, 5);
insert into products values(104, 'keyboard', 850.00, 10);
insert into products values(105, 'sd card', 475.00, 0);

create or replace view prod_over as select * from products where pstock = 0;

create or replace view prod_list as select pname from products;

create or replace view prod_price 
as select pname product_name, pprice product_price from products;

create or replace view prod_storage 
as select pname, pprice from products where pname in ('hdd', 'cd', 'sd card');

create or replace view prod_top2 as select pname, pprice from products 
order by pprice desc limit 2;


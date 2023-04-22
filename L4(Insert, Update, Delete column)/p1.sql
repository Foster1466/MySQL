drop database if exists book_db;
create database if not exists book_db;
use book_db;

create table if not exists book(
bid int primary key,
bname varchar(50),
bprice decimal(10,2),
bcategory varchar(50)
);
select * from book;

insert into book values(10, 'java', 450, 'comps');
select * from book;

insert into book values(20,'android', 350, 'comps'),(15, 'ac', 450,'mech');
select * from book;

update book set bname = 'java certification' where bid= 10;
select * from book;

update book set bname = 'rac', bprice=320 where bid= 15;
select * from book;

update book set bprice = bprice * 1.10;
select * from book;

delete from book where bcategory = 'mech';
select* from book;

update book set bprice = bprice * 0.97 where bcategory= 'comps';
select * from book;
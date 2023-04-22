use example;

create table book(
book_id int unsigned not null,
book_name varchar(10),
author_name varchar(50)
);

desc book;

alter table book add book_price decimal(10,2) not null;
desc book;

alter table book modify book_name varchar(30);
desc book;

alter table book add publisher_name varchar(100) after book_name;
desc book;

alter table book modify book_name varchar(30) not null;
desc book;

alter table book modify author_name varchar(50) not null;
desc book;

alter table book modify book_price decimal(10,2) unsigned not null;
desc book;
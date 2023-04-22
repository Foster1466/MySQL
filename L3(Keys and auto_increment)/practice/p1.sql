drop database if exists books_db;
create database if not exists books_db;
use books_db;

create table if not exists book
(
book_id int unsigned not null,
book_name varchar(10),
author_name varchar(50)
);
desc book;

alter table book add column book_price decimal(10, 2) not null;
desc book;

alter table book modify book_name varchar(30);
desc book;

alter table book add column publisher_name varchar(100) after book_name;
desc book;

alter table book modify book_name varchar(30) not null,
    modify author_name varchar(50) not null;
desc book;

alter table book modify book_price decimal(10, 2) unsigned;
desc book;
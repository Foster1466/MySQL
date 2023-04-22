drop database if exists vendors_db;
create database if not exists vendors_db;
use vendors_db;

create table if not exists vendors
(
vendor_name varchar(20) not null,
vendor_description varchar(500) not null,
vendor_phone int unsigned not null
);
desc vendors;

alter table vendors add column vendor_location varchar(50);
desc vendors;

alter table vendors modify vendor_name varchar(30) not null;
desc vendors;

alter table vendors add column vendor_id int unsigned not null first;
desc vendors;

alter table vendors modify vendor_name enum('FLIPKART', 'AMAZON');
desc vendors;

alter table vendors drop vendor_phone;
desc vendors;

alter table vendors modify vendor_description varchar(500) not null after vendor_id;
desc vendors; 


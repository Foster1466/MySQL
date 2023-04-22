use example;

create table vendors(
vendor_name varchar(20) not null,
vendor_description varchar(500) not null,
vendor_phone int not null
);

desc vendors;

alter table vendors add vendor_location varchar(50);
desc vendors;

alter table vendors modify vendor_name varchar(30) not null;
desc vendors;

alter table vendors add vendor_id int unsigned not null first;
desc vendors;

alter table vendors modify vendor_name enum('FLIPKART', 'AMAZON');
desc vendors;

alter table vendors drop vendor_phone;
desc vendors;
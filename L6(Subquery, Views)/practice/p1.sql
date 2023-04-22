drop database if exists college_db;
create database if not EXISTS college_db;
use college_db;

create table if not exists department(
dept_name varchar(30) primary key,
dept_bldg int,
dept_hod varchar(30)
);

insert into department values('comps',1,'surya');
insert into department values('extc',2,'vaishnavi');
insert into department values('it',3,'raja');

create table if not exists employee(
id int primary key,
name varchar(30),
dept_name varchar(30),
salary decimal(10, 2),
gender enum('m','f'),
foreign key(dept_name) REFERENCES department(dept_name)
);

insert into employee values(1, 'amit', 'comps', 4500.00,'m');
insert into employee values(2, 'sumit', 'comps', 5000.00,'m');
insert into employee values(3, 'reena', 'comps', 5000.00,'f');
insert into employee values(4, 'nikhil', 'it', 3500.00,'m');
insert into employee values(5, 'seema', 'extc', 2500.00,'f');
insert into employee values(6, 'rakesh', 'it', 4200.00,'m');
insert into employee values(7, 'rinkesh', 'comps', 6200.00,'m');
insert into employee values(8, 'pooja', 'extc', 2200.00,'f');
insert into employee values(9, 'saurabh', 'it', 4800.00,'m');
insert into employee values(10, 'rahul', 'extc', 5800.00,'m');

select * from department;
select * from employee;

select * from employee where salary=(select min(salary) from employee);

select * from employee 
where dept_name in (select dept_name from department where dept_hod='surya');

select * from employee
where dept_name in (select dept_name from department where dept_bldg=1);

select * from employee
where salary in (select max(salary) from employee group by dept_name);

create table ecomps like employee;
insert into ecomps select * from employee where dept_name='comps';
select * from ecomps;

select * from employee e
where salary> any (select avg(salary) from employee where dept_name=e.dept_name);

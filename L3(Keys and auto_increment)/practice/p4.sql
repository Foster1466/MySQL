drop DATABASE if EXISTS employee_db;
create DATABASE if not EXISTS employee_db;
use employee_db;

create TABLE if not EXISTS employee
(
eid int unsigned,
ename varchar(30),
esalary decimal(10, 2),
primary key(eid, ename)
);
desc employee;
show index from employee\G
select * from employee;

alter table employee drop primary key;
desc employee;
show index from employee\G

alter table employee add CONSTRAINT primary key(eid);
desc employee;
show index from employee\G
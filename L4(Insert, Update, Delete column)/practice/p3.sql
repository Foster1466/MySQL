drop DATABASE if EXISTS emp_db;
create DATABASE if not EXISTS emp_db;
use emp_db;

create table if not exists emp
(
employee_id int primary key,
first_name varchar(30),
last_name varchar(30),
salary decimal(10,2),
joining_date date,
department varchar(30)
);
desc emp;

insert into emp values(1, 'amit', 'shah', 5000.00, '2013-01-01', 'Banking');
insert into emp values(2, 'john', "d'souza", 4000.00, '2013-01-01', 'Insurance');
insert into emp values(3, 'nikhil', 'roy', 6000.00, '2013-02-01', 'Banking');
insert into emp values(5, 'raj', 'sharma', 4500.00, '2013-02-01', 'Insurance');

select * from emp;

select first_name as 'FIRST NAME', last_name as 'LAST NAME' from emp;

select concat(first_name,'(',department,')') as 'Emp_Info' from emp;

select * from emp where salary%1000=0;

select DISTINCT department from emp;

select concat(first_name, last_name) as 'Employee', salary as 'Incr. Salary'
from emp where salary*1.25>5000;

select concat(first_name, ' gets Rs ', salary) as 'Emp Info' from emp 
where department='Insurance';

select * from emp where first_name in ('amit','vishal');

select * from emp where salary between 4500 and 5500;

select * from emp where last_name like 'S%' or first_name like '%a%';

select * from emp where last_name like "%'%";

select * from emp order by department desc, first_name;

select employee_id, first_name, salary as 'Monthly_salary', salary*12 as 'Annual salary' 
from emp order by salary*12;

select * from emp order by salary desc limit 2;

select * from emp order by salary desc limit 1,1;
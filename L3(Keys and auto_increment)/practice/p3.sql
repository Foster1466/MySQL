drop DATABASE if EXISTS students_db;
create DATABASE if not EXISTS students_db;
use students_db;

create TABLE if not EXISTS student
(
rno int unsigned unique,
name varchar(20) not null,
phone int unsigned not null,
email varchar(30),
engg_year enum('fe','se','te','be'),
CONSTRAINT uk1_email unique(email)
);
desc student;
show index from student\G

alter table student add CONSTRAINT uk2_phone unique(phone);
desc student;
show index from student\G

alter table student drop index uk1_email;
desc student;
show index from student\G
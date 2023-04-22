use example;

create table student(
rno int unsigned unique,
name varchar(20) not null,
phone int not null,
email varchar(30),
engg_year enum('fe','se','be','te'),
constraint uk1_email unique(email)
);

desc student;
show index from student\G

alter table student add constraint uk2_phone unique(phone);
desc student;
show index from student\G

alter table student drop index uk1_email;
desc student;
show index from student\G
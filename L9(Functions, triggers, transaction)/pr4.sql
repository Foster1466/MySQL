use db_11oct2020;

drop table if exists kc_students;
drop table if exists kc_students_bkup;
create table kc_students(
rno int unsigned primary key,
name varchar(20) not null,
marks tinyint unsigned
);

create table kc_students_bkup like kc_students;

delimiter $$
drop event if exists e1 $$
create event e1 on schedule every 1 minute do
begin
delete from kc_students_bkup;
insert into kc_students_bkup select * from kc_students;
end$$
delimiter ;
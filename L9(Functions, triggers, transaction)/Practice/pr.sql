use example;
drop table if exists student;
create table if not exists student
(
rno int unsigned primary key auto_increment,
name varchar(20),
marks tinyint unsigned,
location varchar(20) default 'mumbai',
gender enum('m','f'),
prog_lang set('java','android','python','django','golang')
);

insert into student values(default, 'amit', 90, default, 'm', 'java'), (default, 'seema', 40, 'thane', 'f', 'java'),
(default, 'raj', 60, default, 'm', 'java'),
(default, 'reema', 70, 'thane', 'f', 'python'),
(default, 'vijay', 78, default, 'm', 'golang'),
(default, 'deepika', 92, 'thane', 'f', ''),
(default, 'jai', 83, default, 'm', 'java');

select * from student;
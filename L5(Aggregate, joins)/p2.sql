drop table if exists python;
drop table if exists java;

create table java( name varchar(20));
create table python( name varchar(20));

insert into java values('amit'),('pooja'),('vishal'),('rinky');
insert into python values('amit'),('pooja'),('vineet'),('sanket'),('ganesh');

select name from java
union
select name from python;

select name from java
union all
select name from python;

-- select name from java where java.name IN(select python.name from python)
select a.name from java a inner join python b where a.name=b.name;

select a.name from java a left join python b on a.name=b.name where b.name is null;

select a.name from java a left join python b on a.name=b.name where b.name is null;
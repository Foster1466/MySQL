-- wams to list any random movie of akshay

delimiter $$

drop procedure if exists p4$$
create procedure p4()
BEGIN
declare tmp int default 0;
declare le int default 0;
create table am(movie_id int, movie_name varchar(30));

insert into am values(1,'de dana dan'), (2,'welcome'), (3,'rustom'), (4, 'baby'),(5,'sooryavanshi'), (6,'hera pheri'), (7,'boss'), (8,'khiladi'),(9,'patiala house'), (10, 'namaste london'), (11, 'int. khiladi'), (12, 'Singh is king');

select concat(*) into le from am;
set tmp=ceiling(rand()*le);
select movie_name(from am where movie_id=tmp);
drop table am;

end $$
delimiter ;
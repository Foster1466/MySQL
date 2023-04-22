-- wamp p3 to return list of student names	very cool calm  handsome prof

delimiter $$
drop procedure if exists p3$$

create procedure p3(out list_of_names varchar(500))
begin

declare na varchar(30) default '';
declare co int default 0;
declare i int default 1;

declare c1 cursor for select name from student;

select count(*) into co from student;

if co=0 then 
	set list_of_names= 'no student found';
else
	set list_of_names= '';
	open c1;
	while i<=co do
		fetch c1 into na;
		set list_of_names= concat(list_of_names, ' ', na);
		set i= i+1;
	end while;
	close c1;

end if;
end $$
delimiter ;
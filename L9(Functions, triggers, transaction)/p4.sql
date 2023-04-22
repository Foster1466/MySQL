-- wams p4 to return list1 --> names and marks of student 60 or above and list2 --> names and marks of student below 60

delimiter $$
drop procedure if exists p4 $$

create procedure p4(out list1 varchar(500),out list2 varchar(500))
begin
declare na varchar(30) default '';
declare ma int default 0;
declare co int default 0;
declare i int default 1;

declare c1 cursor for select name, marks from student;

select count(*) into co from student;

if co=0 then
	set list1= 'no student found';
	set list2= 'no student found';
else
	set list1= '';
	set list2= '';
	open c1;
	while i<=co do
		fetch c1 into na, ma;
		if ma >= 60 then
			set list1= concat(list1, ' ', na, '-->' , ma);
		else
			set list2= concat(list2, ' ', na, '-->' , ma);
		end if;
		set i= i+1;
	end while;
	close c1;
end if;
end $$
delimiter ;
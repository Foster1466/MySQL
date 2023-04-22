-- wamf to find the max of the marks without using max()

delimiter $$

drop function if exists f4 $$

create function f4() returns int deterministic
begin
declare ma int default 0;
declare max_marks int default 0;

declare c1 cursor for select marks from student;

open c1;
	begin
	declare exit handler for 1329 begin end;
	while true do
		fetch c1 into ma;
		if ma > max_marks then
			set max_marks= ma;
		end if;
	end while;
	end;
close c1;
return max_marks;

end $$

delimiter ;
delimiter $$

drop function if exists f4$$
create function f4() returns int deterministic
BEGIN
declare ma int default 0;
declare res int default 0;

declare c1 cursor for select marks from student;

open c1;
	BEGIN
	declare exit handler for 1329 begin end;
	while true DO
		fetch c1 into ma;
		if ma>res THEN
			set res = ma;
		end if;
	end while;
	end;
close c1;
return res;

end $$
delimiter ;
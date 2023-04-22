delimiter $$
drop function if exists f2$$
create function f2() returns int deterministic
BEGIN
declare co int default 0;
declare rn int default 0;

declare c1 cursor for select rno from student;
open c1;
	BEGIN	
		declare exit handler for 1329
		begin end;
		while true DO
			fetch c1 into rn;
			set co=co+1;
		end while;
	END;
close c1;
return co;
end$$

delimiter ;
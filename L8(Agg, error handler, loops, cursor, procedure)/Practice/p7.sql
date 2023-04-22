delimiter $$
drop procedure if exists p7a$$
create procedure p7a(out list_of_names varchar(500))
begin
declare na varchar(20) default '';
DEclare c1 cursor for select name from kc_thane;

open c1;
	set list_of_names = '';
	begin
		declare exit handler for 1329
		begin end;
		while true DO
			fetch c1 into na;
			set list_of_names = concat(list_of_names, ' ', na);
		end while;
	END;
close c1;


end $$
delimiter ;
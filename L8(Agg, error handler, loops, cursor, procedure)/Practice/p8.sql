delimiter $$
drop procedure if exists p8$$
create procedure p8(out list1 varchar(500), out list2 varchar(500))
begin
declare na varchar(20) default '';
declare ma int default 0;

declare c1 cursor for select name, marks from kc_thane;

open c1;
	set list1= '';
	set list2= '';
	begin
		declare exit handler for 1329
		begin end;
		while true do
			fetch c1 into na, ma;
			if ma>80 then
				set list1= concat(list1, ' ', na, '-->', ma);
			else
				set list2= concat(list2, ' ', na, '-->', ma);
			end if;
		end while;
	end;
close c1;
end $$
delimiter ;
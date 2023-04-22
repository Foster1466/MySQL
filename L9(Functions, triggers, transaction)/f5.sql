-- wamf 5 to accept as input rno and return the name

delimiter $$

drop function if exists f5 $$

create function f5(rn int) returns varchar(100) deterministic
begin
declare na varchar(100) default '';
declare co int default 0;

select count(*) into co from student where rno= rn;

if co=0 then 
	set na= 'student does not exists';
else
	select name into na from student where rno= rn;
end if;

return na;

end $$
delimiter ;
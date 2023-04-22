delimiter $$

drop function if exists f5$$
create function f5(rn int) returns varchar(100) deterministic
BEGIN
declare na varchar(20) default '';
declare co int default 0;

select count(*) into co from student where rno=rn;

if co=0 then 
	set na='student does not exists';
ELSE
	select name into na from student where rno=rn;
end if;

return na;

end $$
delimiter ;
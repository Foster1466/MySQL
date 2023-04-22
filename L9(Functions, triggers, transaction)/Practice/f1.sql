delimiter $$
drop function if exists f1$$

create function f1() returns int deterministic
BEGIN
declare co int default 0;
select count(*) into co from student;
return co;
end $$

delimiter ;
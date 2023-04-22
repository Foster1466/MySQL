use example;
drop table if exists sa;
drop table if exists ca;
create table if not exists sa(ano int primary key, balance decimal(10,2));
create table if not exists ca(ano int primary key, balance decimal(10,2));

delimiter $$

drop trigger if exists bi_sa$$
create trigger bi_sa before insert on sa for each row
begin
if (new.balance <1000) then
	signal sqlstate '11111' set message_text= 'balance shud not be < 1000';
end if;
end $$

drop trigger if exists bu_sa$$
create trigger bu_sa before update on sa for each row
begin
if (new.balance <1000) then
	signal sqlstate '11111' set message_text= 'balance shud not be <1000';
end if;
end $$

drop trigger if exists bi_ca $$
create trigger bi_ca before insert on ca for each row
begin
if (new.balance <1000) then
	signal sqlstate '11111' set message_text= 'balance shud not be <1000';
end if;
end $$

drop trigger if exists bu_ca $$
create trigger bu_ca before update on ca for each row
begin
if (new.balance<1000) then
	signal sqlstate '11111' set message_text= 'balance shud not be <1000';
end if;
end $$

delimiter ;
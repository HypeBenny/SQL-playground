delimiter $$
create trigger kayson
before insert on shippers
for each row
begin
if new.name is null then set new.name = 'kwaku';
end if;
end $$
delimiter ;

INSERT INTO SHIPPERS 
VALUES( 6, NULL)




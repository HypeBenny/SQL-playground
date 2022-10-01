delimiter $$
CREATE PROCEDURE update_orders(in fullname varchar(50))
begin
declare cus_id int;

select customer_id
into cus_id
from customers
where first_name = fullname;

insert into orders(customer_id, order_date, status, comments, shipped_date, shipper_id)
values(cus_id, '2018-05-22', 3, 'loyal custoner', '2018-05-22', 4);

select 'orders table updated' as message;

end  $$
delimiter ;

call update_orders('freddi');
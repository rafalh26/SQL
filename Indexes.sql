-- first --
create nonclustered index ix_location_id on oes.warehouses (location_id) include (warehouse_name);

--2nd--
create unique index ix_product_name on oes.products (product_name);

--3rd--
select
order_id,
order_date
from oes.orders
where order_date >= '20190101' and order_date < '20200101';

--4th--
create index ix_shipped_date on oes.orders(shipped_date)
Where shipped_date is null;

--5th--
create index ix_first_name_last_name on oes.customers(first_name, last_name) include (email, street_address);

select customer_id,first_name,last_name,email,street_address
from oes.customers
where first_name like ('Vi%') and last_name = 'Jones';

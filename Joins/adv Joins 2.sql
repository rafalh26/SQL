select
employee_id,
first_name,
last_name,
department_name,
job_title,
state_province
from hcm.employees left join hcm.countries as c on employees.country_id=c.country_id left join hcm.jobs as j on employees.job_id=j.job_id left join hcm.departments d on employees.department_id=d.department_id
where country_name='Australia';

select
count(quantity) as qty,
pc.category_name,
p.product_name
from
oes.product_categories as pc join oes.products as p on p.category_id=pc.category_id join oes.order_items as oi on p.product_id=oi.product_id join oes.orders as orders on oi.order_id=orders.order_id
where 
orders.order_date is not null
group by p.category_id, pc.category_name, p.product_name
order by pc.category_name asc, p.product_name asc;

select
products.product_name, sum(isnull(order_items.quantity,0)) as quantity,category_name
from oes.products 
left join oes.product_categories on products.category_id=product_categories.category_id left join oes.order_items on products.product_id=order_items.product_id left join oes.orders on order_items.order_id=orders.order_id
group by
product_name,category_name
order by category_name asc, product_name asc;
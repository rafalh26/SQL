select
e.employee_id, e.first_name, e.last_name, e2.first_name as manager_first_name, e2.last_name as manager_last_name
from
hcm.employees as e left outer join hcm.employees as e2 on e.employee_id=e2.manager_id

select
p.product_id,
p.product_name,
i.warehouse_id,
wh.warehouse_name,
i.quantity_on_hand
from
oes.products as p left join oes.inventories as i on p.product_id=i.product_id
left join oes.warehouses as wh on i.warehouse_id=wh.warehouse_id


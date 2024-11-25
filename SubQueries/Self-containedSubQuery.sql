select
product_id,
product_name,
list_price,
category_id
from
oes.products
where list_price=(
select min(list_price)
from oes.products)
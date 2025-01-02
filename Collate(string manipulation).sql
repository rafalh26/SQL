select
	country_name
from
	hcm.countries
where country_name like 'N%'
Collate Latin1_General_CS_AS;

select
*
from oes.customers
where email like '%gmail%'
order by first_name

select product_name
from
oes.products
where product_name like '%mouse%'

select product_name
from
oes.products
where product_name like '%[0-9]'
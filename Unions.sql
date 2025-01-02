select
scientific_name
from 
bird.california_sightings
union
select scientific_name
from bird.arizona_sightings


select
scientific_name, 'California' as state_name
from
bird.california_sightings
union
select
scientific_name, 'Arizona' as state_name
from bird.arizona_sightings
union
select
scientific_name, 'Florida' as state_name
from
bird.florida_sightings
order by state_name,scientific_name

select
sighting_id,scientific_name,common_name,location_of_sighting,sighting_date, 'Califirnia' as state_name
from
bird.california_sightings
union
select
sighting_id,scientific_name,common_name,sighting_location,sighting_date, 'Arizona' as state_name
from bird.arizona_sightings
union
select
observation_id,scientific_name,'NULL',locality,sighting_datetime, 'Florida' as state_name
from
bird.florida_sightings
order by scientific_name

select
customer_id
from
oes.customers
intersect
select
customer_id
from oes.orders

select
product_id
from
oes.products
except
select
product_id
from
oes.inventories
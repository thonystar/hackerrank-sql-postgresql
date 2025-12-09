
(select city, length(city) as longitud
from station2
order by 
length(city), city 
limit 1)
union all
(select city, length(city) as longitud
from station2
order by 
length(city) desc, city 
limit 1)
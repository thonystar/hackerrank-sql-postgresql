select 
	count(*) - count(distinct city) as city_distinct
from station
select name
from students
where marks > 75
order by lower(substr(name, length(name) - 2, 3)), -- permite extraer los ultimos 3 elementos
id;
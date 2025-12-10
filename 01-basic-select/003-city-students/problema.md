\# Problema 003 – Higher Than 75 Marks (HackerRank)



\## Descripción



Obtener el nombre (`name`) de los estudiantes en la tabla `STUDENTS` que tengan una calificación (`marks`) mayor a 75.



El resultado debe ordenarse por:



1\. Los últimos tres caracteres del nombre (orden alfabético).

2\. En caso de coincidencia, por el ID en orden ascendente.



La tabla `STUDENTS` tiene la siguiente estructura:



\- `ID`      – número entero

\- `NAME`    – nombre del estudiante

\- `MARKS`   – puntaje obtenido



---



\## Esquema y datos



\- Esquema PostgreSQL (public): `schema\_postgres.sql`

\- Datos de ejemplo (50 registros): `data\_sample.sql`



---



\## Solución (PostgreSQL)



```sql

SELECT name

FROM students

WHERE marks > 75

ORDER BY LOWER(RIGHT(name, 3)), id;







-- Solución (MySQL)





select name

from students

where marks > 75

order by lower(substr(name, length(name) - 2, 3)), -- permite extraer los ultimos 3 elementos

id;




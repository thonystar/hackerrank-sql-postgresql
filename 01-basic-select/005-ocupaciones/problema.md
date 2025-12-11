\# Problema 005 – Occupations (HackerRank)



\## Descripción



Se dispone de la tabla `OCCUPATIONS`, que contiene nombres de personas y su ocupación.  

La columna `Occupation` solo puede tomar uno de los siguientes valores: `Doctor`, `Professor`, `Singer` o `Actor`.



A partir de esta tabla se deben generar dos conjuntos de resultados:



1\. Listar todos los nombres ordenados alfabéticamente, seguidos inmediatamente de la primera letra de su ocupación entre paréntesis.  

&nbsp;  Ejemplos de salida:

&nbsp;  - `AnActorName(A)`

&nbsp;  - `ADoctorName(D)`

&nbsp;  - `AProfessorName(P)`

&nbsp;  - `ASingerName(S)`



2\. Contar cuántas veces aparece cada ocupación en la tabla y mostrar el resultado en el siguiente formato:



&nbsp;  `There are a total of \[occupation\_count] \[occupation]s.`



&nbsp;  donde:

&nbsp;  - `\[occupation\_count]` es el número de registros de esa ocupación en `OCCUPATIONS`.

&nbsp;  - `\[occupation]` es el nombre de la ocupación en minúsculas.



&nbsp;  Los resultados deben ordenarse por:

&nbsp;  - número de ocurrencias en orden ascendente, y

&nbsp;  - en caso de empate, por el nombre de la ocupación en orden alfabético.



La tabla `OCCUPATIONS` tiene la siguiente estructura:



\- `Name`       – cadena de texto (nombre de la persona)  

\- `Occupation` – cadena de texto (tipo de ocupación)  



---



\## Esquema y datos



\- Esquema PostgreSQL (public): `schema\_postgres.sql`  

\- Datos de ejemplo: `data\_sample.sql`  



---



\## Solución (PostgreSQL)



```sql

SELECT

&nbsp;   name || '(' || SUBSTR(occupation, 1, 1) || ')'

FROM occupations

ORDER BY name;



SELECT

&nbsp;   'There are a total of' || ' ' || COUNT(\*) || ' ' || LOWER(occupation) || 's.'

FROM occupations

GROUP BY occupation

ORDER BY COUNT(\*),

&nbsp;        occupation;



-- Para MySQL



select 

concat(name, '(', substr(occupation,1,1), ')')

from occupations

order by name;





select concat('There are a total of', ' ', count(\*), ' ', lower(occupation), 's.')

from occupations

group by occupation

order by count(\*),

occupation;


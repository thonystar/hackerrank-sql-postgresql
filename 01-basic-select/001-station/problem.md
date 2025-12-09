\# Problema 001 – STATION (HackerRank)



\## Descripción



Encuentra la diferencia entre el número total de entradas de `CITY` en la tabla y el número de entradas de `CITY` \*\*distintas\*\*.



La tabla \*\*STATION\*\* tiene la siguiente estructura:



\- `ID`      – número entero

\- `CITY`    – nombre de la ciudad (varchar)

\- `STATE`   – código del estado (2 caracteres)

\- `LAT\_N`   – latitud norte (numérico)

\- `LONG\_W`  – longitud oeste (numérico)



El resultado es un solo número:  

`total\_registros - total\_ciudades\_distintas`.



---



\## Esquema y datos



\- Esquema PostgreSQL (public): `schema\_postgres.sql`

\- Datos de ejemplo: `data\_sample.sql`



---



\# Problema 001 – STATION (HackerRank)



\## Descripción



Encuentra la diferencia entre el número total de entradas de `CITY` en la tabla y el número de entradas de `CITY` \*\*distintas\*\*.



La tabla \*\*STATION\*\* tiene la siguiente estructura:



\- `ID`      – número entero

\- `CITY`    – nombre de la ciudad (varchar)

\- `STATE`   – código del estado (2 caracteres)

\- `LAT\_N`   – latitud norte (numérico)

\- `LONG\_W`  – longitud oeste (numérico)



El resultado es un solo número:  

`total\_registros - total\_ciudades\_distintas`.



---



\## Esquema y datos



\- Esquema PostgreSQL (public): `schema\_postgres.sql`

\- Datos de ejemplo: `data\_sample.sql`



---



\## Solución (PostgreSQL)



```sql

SELECT 

&nbsp;   COUNT(\*) - COUNT(DISTINCT city) AS city\_distinct

FROM station;




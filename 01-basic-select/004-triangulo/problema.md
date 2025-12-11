\# Problema 004 – Triangles (HackerRank)



\## Descripción



Dada la tabla `TRIANGLES`, que contiene las longitudes de los tres lados de un posible triángulo (`A`, `B`, `C`), se debe identificar el tipo de figura que representan dichos valores.



Para cada registro se debe devolver uno de los siguientes resultados:



\- `Equilateral`: los tres lados son iguales.

\- `Isosceles`: exactamente dos lados son iguales.

\- `Scalene`: los tres lados son distintos.

\- `Not A Triangle`: los valores no cumplen la desigualdad triangular y, por lo tanto, no forman un triángulo válido.



La tabla `TRIANGLES` tiene la siguiente estructura:



\- `A` – número entero  

\- `B` – número entero  

\- `C` – número entero  



---



\## Esquema y datos



\- Esquema PostgreSQL (public): `schema\_postgres.sql`  

\- Datos de ejemplo (50 registros): `data\_sample.sql`  



---



\## Solución (PostgreSQL)



```sql

SELECT 

&nbsp;   a, 

&nbsp;   b, 

&nbsp;   c,

&nbsp;   CASE 

&nbsp;       WHEN a + b <= c OR a + c <= b OR b + c <= a THEN 'Not A Triangle'

&nbsp;       WHEN a = b AND a = c AND b = c THEN 'Equilateral'

&nbsp;       WHEN a = b OR a = c OR b = c THEN 'Isosceles'

&nbsp;       WHEN a <> b AND a <> c AND b <> c THEN 'Scalene'

&nbsp;   END AS tipo

FROM triangles;




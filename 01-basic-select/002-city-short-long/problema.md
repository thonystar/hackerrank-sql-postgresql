\# Problema 002 – Ciudades con nombre más corto y más largo (STATION)



\## Descripción



Consulta las dos ciudades en `STATION` con los nombres de `CITY` más \*\*cortos\*\* y más \*\*largos\*\*, junto con la longitud (cantidad de caracteres) del nombre de la ciudad.



\- Si hay más de una ciudad con el nombre más corto, se debe elegir la \*\*primera alfabéticamente\*\*.

\- Si hay más de una ciudad con el nombre más largo, también se debe elegir la \*\*primera alfabéticamente\*\*.



La tabla \*\*STATION\*\* contiene la siguiente información:



| Campo  | Tipo         |

|--------|--------------|

| ID     | NUMBER       |

| CITY   | VARCHAR2(21) |

| STATE  | VARCHAR2(2)  |

| LAT\_N  | NUMBER       |

| LONG\_W | NUMBER       |



`LAT\_N` es la latitud norte y `LONG\_W` la longitud oeste.



---



\## Entrada de ejemplo



Por ejemplo, si `CITY` incluye las entradas: `DEF`, `ABC`, `PQRS` y `WXY`,

la ciudad más corta sería `ABC` (3 caracteres) y la más larga `PQRS` (4 caracteres),

asumiendo orden alfabético en caso de empate.



---



\## Esquema y datos usados para practicar



\- Esquema PostgreSQL (`public2`): `schema\_postgres.sql`

\- Datos de ejemplo: `data\_sample.sql`



> Los datos usados en este repositorio son de prueba para facilitar la ejecución en PostgreSQL.



---



\## Solución (PostgreSQL)



> La solución se encuentra en el archivo `solution\_postgres.sql`.



> \*\*Nota:\*\* La sintaxis de la solución oficial en HackerRank puede variar según el motor SQL usado en la plataforma (MySQL, DB2, etc.). La versión incluida en este repositorio está adaptada para PostgreSQL.




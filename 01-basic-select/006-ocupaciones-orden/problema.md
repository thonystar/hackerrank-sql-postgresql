\# 006 - Occupations (Pivot)



\## Descripción



La tabla `occupations` contiene los nombres de personas y su ocupación.  

Cada registro tiene una de las siguientes ocupaciones: \*\*Doctor\*\*, \*\*Professor\*\*, \*\*Singer\*\* o \*\*Actor\*\*.



Se pide \*\*girar\*\* (pivotear) la columna `occupation` para que cada nombre aparezca en una columna según su ocupación.  

El resultado debe mostrar \*\*cuatro columnas\*\*, en este orden exacto:



1\. `Doctor`

2\. `Professor`

3\. `Singer`

4\. `Actor`



Bajo cada columna deben listarse los nombres \*\*ordenados alfabéticamente\*\* dentro de su ocupación.  

Si en alguna fila no existe un nombre para cierta ocupación, se debe mostrar `NULL`.



---



\## Esquema de la tabla



```text

Tabla: occupations



Column      Type

---------   -----------

name        String

occupation  String




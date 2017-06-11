
Ejercicio base usado en el primer test de integración del runner de sqlite.

Se cuenta con una base de datos llamada `test1` con la siguiente estructura:

 - **id**: _PK_, _AUTO_
 - **name**: _VARCHAR(200)_, _NOT NULL_

La tabla `test1` contiene 2 registros:

   id | name
  ----|--------
    1 | Name 1 
    2 | Name 2 

El ejercicio requiere generar una consulta que retorne todos los registros de la tabla.

Hint: Escribí `select * from test1;`
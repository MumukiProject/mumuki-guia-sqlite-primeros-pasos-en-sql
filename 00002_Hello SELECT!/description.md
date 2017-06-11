La sentencia `SELECT` es por lejos la más utilizada
para interactuar con las bases de datos. La estructura más básica tiene esta pinta:

```sql
SELECT * FROM <nombre-de-la-tabla>;
```

Eso se traduce como: _Seleccionar todos los campos de la tabla nombre-de-la-tabla_

En **SQL** es extremadamente importante respetar
la estructura de la sentencia. **No es lo mismo**
escribir `SELECT * FROM motores;` que `FROM motores SELECT *;`. Esta último **no es una sentencial SQL válida**.

También es **muy importante** que termines cada sentencia con un punto y coma (`;`).

**En base a esto se pide:**

> Obtener todos los registros guardados en
> la tabla `bolitas` (la cual contiene los
> colores de las bolitas permitidos en un tablero
> de Gobstones).
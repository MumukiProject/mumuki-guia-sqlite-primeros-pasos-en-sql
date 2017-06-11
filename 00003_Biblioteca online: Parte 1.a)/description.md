<style>
.table { font-size: 12px; }
.table > tr > td { width: auto; line-height: 2; white-space: nowrap; }
</style>

> Este ejercicio es parte de la guía utilizada en la materia Bases de Datos de la Universidad Nacional de quilmes. Ver [Práctica 6 - SQL](http://basesdedatos.web.unq.edu.ar/wp-content/uploads/sites/87/2017/05/practica-sql.pdf).

Se cuenta con las siguientes tablas y datos:

**libro**

| isbn     | titulo                           |
|----------|----------------------------------|
| 33058621 | Inferno                          |
| 35494238 | Cien Años de Soledad             |
| 58764384 | Venas abiertas de América Latina |
| 38784929 | Aeropuerto                       |

**ejemplar**

| codejemplar | isbnlibro | edicion |
|-------------|-----------|---------|
| 503         | 33058621  | 2       |
| 785         | 33058621  | 4       |
| 065         | 35494238  | 1       |
| 098         | 38784929  | 3       |
| 223         | 58764384  | 3       |
| 101         | 58764384  | 1       |

**prestamo**

|codejemplar | codsocio | fechaprestamo | fechadevolución |
|------------|----------|-----------------|------|
| 503 | 78 | 03/05/2012 | 08/05/2012 |
| 223 | 54 | 21/01/2013 | 23/01/2013 |
| 785 | 78 | 21/02/2013 |            |
| 101 | 03 | 17/11/2013 | 18/11/2013 |


**socio**

|codsocio | nombreyapellido | fechaingreso | montocuota | matricula | pais
|----|-----|----|----|----|----|
| 78 | Sheldon Cooper    |03/05/2011 | 12 |4 | Brasil |
| 54 | Howard Wolowitz   |21/01/2011 | 16 |0 | Argentina |
| 03 | Amy Farrah Fowler |17/02/2011 |  5 | 10 | Argentina |

**nacionalidad**

| nombrepais | nacionalidad |
|------------|--------------|
|Argentina   | Argentina    |
|Brasil      | Brasilera    |
|Perú        | Peruana      |
|Mexico      | Mexicana     |


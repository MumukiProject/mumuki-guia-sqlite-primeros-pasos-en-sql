<style>
table { font-size: 14px; }
td { line-height: 1 !important; }
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

#### Observe las siguientes sentencias utilizadas para la creación de las tablas descriptas

```sql
CREATE TABLE libro (
  isbn INTEGER PRIMARY KEY,
  titulo VARCHAR(32)
);

INSERT INTO libro
  (isbn, titulo)
VALUES
  (33058621, 'Inferno'),
  (35494238, 'Cien Anios de Soledad'),
  (58764384, 'Venas abiertas de America Latina'),
  (38784929, 'Aeropuerto');

CREATE TABLE ejemplar (
  cod_ejemplar INTEGER PRIMARY KEY,
  isbn_libro INT,
  edicion INT,
  CONSTRAINT fk_ejemplar FOREIGN KEY (isbn_libro) REFERENCES libro(isbn)
);

INSERT INTO ejemplar
	(cod_ejemplar, isbn_libro, edicion)
VALUES
	(503, 33058621, 2),
	(785, 33058621, 4),
	(065, 35494238, 1),
	(098, 38784929, 3),
	(223, 58764384, 3),
	(101, 58764384, 1);

CREATE TABLE nacionalidad (
  nombre_pais VARCHAR(9) PRIMARY KEY,
  nacionalidad VARCHAR(9)
);

INSERT INTO nacionalidad
	(nombre_pais, nacionalidad)
VALUES
	('Argentina', 'Argentina'),
	('Brasil', 'Brasilera'),
	('Peru', 'Peruana'),
	('Mexico', 'Mexicana');

CREATE TABLE socio (
  cod_socio INTEGER PRIMARY KEY,
  nombre_y_apellido VARCHAR(17),
  fecha_ingreso timestamp, 
  monto_cuota INT,
  matricula INT,
  pais VARCHAR(9),
  CONSTRAINT fk_nombrepais FOREIGN KEY(pais) REFERENCES nacionalidad(nombre_pais)
);
	
INSERT INTO socio
	(cod_socio, nombre_y_apellido, fecha_ingreso, monto_cuota, matricula, pais)
VALUES
	(78, 'Sheldon Cooper', '2011-05-03 00:00:00', 12, 4, 'Brasil'),
	(54, 'Howard Wolowitz', '2011-01-21 00:00:00', 16, 0, 'Argentina'),
	(03, 'Amy Farrah Fowler', '2011-02-17 00:00:00', 5, 10, 'Argentina')
;

CREATE TABLE prestamo (
  cod_ejemplar INT,
  cod_socio INT,
  fecha_prestamo TIMESTAMP,
  fecha_devolucion TIMESTAMP,
  PRIMARY KEY(cod_ejemplar,cod_socio),
  CONSTRAINT fk_cod_ejemplar FOREIGN KEY (cod_ejemplar) REFERENCES ejemplar (cod_ejemplar),
  CONSTRAINT fk_cod_socio FOREIGN KEY (cod_socio) REFERENCES socio(cod_socio)
);
	
INSERT INTO prestamo
	(cod_ejemplar, cod_socio, fecha_prestamo, fecha_devolucion)
VALUES
	(503, 78, '2012-05-03 00:00:00', '2012/05/08'),
	(223, 54, '2013-01-21 00:00:00', '2013/03/01'),
	(785, 78, '2013-02-20 00:00:00', NULL),
	(101, 03, '2013-11-17 00:00:00', '2013/11/18');
```
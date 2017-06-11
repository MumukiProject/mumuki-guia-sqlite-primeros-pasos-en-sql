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

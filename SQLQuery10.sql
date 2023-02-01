/*
Trabaje con la tabla "Libros" de una libreria que guarda informacion 
referente a sus libros disponibles para la venta.

1- Elimine la tabla si existe.

2- Cree la tabla "Libros". Debe tener la siguiente estructura:
create table libros(
	titulo varchar(20),
	autor varchar(30),
	editorial varchar(15));

3- Visualice la estructura de la tabla "Libros".

4- Ingresa los siguientes registros:
El aleph, Borges, Emece;
Martin Fierro, Jose Hernandez, Emece;
Martin Fierro, Jose Hernandez, Planeta;
Aprenda PHP, Mario Molina, Siglo XXI;

5- Seleccione los registros cuyo autor sea "Borges" (1 registro)

6- Seleccione los titulos de los Libros cuya editorial sea "Emece" (2 registros)

7- Seleccione los nombres de las editoriales de los libros cuyo titulo sea
"Martin Fierro" (2 registros)
*/

use BD1;

if object_id('libros') is not null
	drop table libros;

create table libros(
	titulo varchar(20),
	autor varchar(30),
	editorial varchar(15)
);

go

exec sp_columns libros;

insert into libros(titulo,autor,editorial) 
values('El aleph', 'Borges', 'Emece');
insert into libros(titulo,autor,editorial) 
values('Martin Fierro', 'Jose Hernandez', 'Emece');
insert into libros(titulo,autor,editorial) 
values('Martin Fierro', 'Jose Hernandez', 'Planeta');
insert into libros(titulo,autor,editorial) 
values('Aprenda PHP', 'Mario Molina', 'Siglo XXI');

select * from libros where autor = 'Borges';

select titulo from libros where editorial = 'Emece';

select editorial from libros where titulo = 'Martin Fierro';


/*
Un video club que alquila peliculas en video almacena la informacion de sus
peliculas en alquiler en
una tabla denominada "peliculas".

1- Elimine la tabla, si existe.

2- Cree la tabla eligiendo el tipo de dato adecuado para cada campo:
create table peliculas(
	titulo varchar(30),
	actor varchar(20),
	duracion integer,
	cantidad integer
);

3- Ingrese los siguientes registros:
insert into peliculas(titulo,actor,duracion,cantidad) values('Mision imposible','Tom Cruise',120,3);
insert into peliculas(titulo,actor,duracion,cantidad) values('Mision imposible 2','Tom Cruise',180,4);
insert into peliculas(titulo,actor,duracion,cantidad) values('Mujer bonita','Julia Robert',90,1);
insert into peliculas(titulo,actor,duracion,cantidad) values('Elsa y Fred','China Zorrilla',80,2);

4- Seleccione las peliculas cuya duracion no supere los 90 minutos (2 registros)

5- Seleccione el titulo de todas las peliculas en las que el actor NO sea "Tom Cruise" (2 registros)

6- Muestre todos los campos. excepto "duracion", de todas las peliculas de las que haya más de 2 copias (2 registros)
*/

use BD1;

if object_id('peliculas') is not null
	drop table peliculas;

create table peliculas(
	titulo varchar(30),
	actor varchar(20),
	duracion integer,
	cantidad integer
);

go

insert into peliculas(titulo,actor,duracion,cantidad) values('Mision imposible','Tom Cruise',120,3);
insert into peliculas(titulo,actor,duracion,cantidad) values('Mision imposible 2','Tom Cruise',180,4);
insert into peliculas(titulo,actor,duracion,cantidad) values('Mujer bonita','Julia Robert',90,1);
insert into peliculas(titulo,actor,duracion,cantidad) values('Elsa y Fred','China Zorrilla',80,2);

select * from peliculas where duracion <= 90;

select titulo from peliculas where actor <> 'Tom Cruise';

select titulo,actor,cantidad from peliculas where cantidad > 2; 
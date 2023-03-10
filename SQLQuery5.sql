/*
Una empresa almacena los datos de sus empleados en una tabla "empleados"
que guarda los siguientes datos: nombre, documento, sexo, domicilio, sueldobasico.

1- Elimine la tabla, si existe

2- Cree la tabla eligiendo el tipo de datos adecuado para cada campo

3- Vea la estructura de la tabla.

4- Ingrese algunos registros:
	insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
	values ('Juan Perez','23333444','m','Sarmiento 123',500);
	insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
	values ('Ana Acosta','24555666','f','Colon 134',650);
	insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
	values ('Bartolome Barrios','27888999','m','Urquiza 479',800);

5- Seleccione todos los registros
*/

use BD1;

if object_id('empleados') is not null
	drop table empleados;

create table empleados(
	nombre varchar(50),
	documento varchar(8),
	sexo  varchar(1),
	domicilio varchar(40),
	sueldobasico float
);

exec sp_columns empleados;

	insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
	values ('Juan Perez','23333444','m','Sarmiento 123',500);
	insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
	values ('Ana Acosta','24555666','f','Colon 134',650);
	insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
	values ('Bartolome Barrios','27888999','m','Urquiza 479',800);

select * from empleados;
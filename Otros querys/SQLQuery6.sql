/*Crear Base de Datos*/
create database Curso_SQL;

/*Ponerla en curso*/
use Curso_SQL

/*Crear Tabla*/
Create Table Cliente(
Nombre varchar(30),
Apellido varchar(30),
Telefono varchar(30),
Edad int,
Fecha_Nac date
)

Insert into Cliente (Nombre, Apellido, Telefono, Edad, Fecha_Nac) values ('Ramon', 'Perez', '809-567-6574', 34, '02/23/1987')

Insert into Cliente values ('Maria', 'Alcantara', '811-576-6689', 23, '01/24/1999');

Insert into Cliente values ('Sara', 'Cid Almonte', '809-653-2891', 33, '03/06/1988');

Insert into Cliente values ('José Alberto', 'Abreu', '849-547-5432', 33, '01/24/1988');

Insert into Cliente values ('Adalgiza', 'Gúzman', '829-345-5122', 37, '07/16/1984');

Insert into Cliente values ('Guillermo', 'Henríquez', '809-321-0987', 42, '05/15/1979');


/*Consulta*/
Select Nombre, Apellido, Telefono, Edad, Fecha_Nac from Cliente;

Select * from Cliente where edad = 33;
Select * from Cliente where Apellido = 'Alcantara';

/*Operadores relacionales*/
select * from Cliente;

select * from Cliente where edad >= 33;

select * from Cliente where edad < 33;

/*Eliminar informaciones(Delete)*/
select * from Cliente;

delete from Cliente where Apellido = 'Alcantara';

delete from Cliente where Nombre = 'Sara';

delete from Cliente;

/*Actualización de las informaciones (Update)*/

select * from Cliente;

Update Cliente set Nombre = 'Pedro José', Fecha_Nac = '04/25/2000'  where Edad = 42;
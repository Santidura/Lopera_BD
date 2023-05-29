--transacciones
create database prueba-transacciones
go
use prueba-transacciones 
go 
create table empleados 
(cod int primary key,
    nom varchar(50),
    not null,
    edad int check(edad>=18))
 insert into empleados(cod,nom,edad)
 values (1,'carlos',18),(2,'marlon',54),(3,'santiago',17),(4,'segura',18)
 begin transaction xx--begin es para borrar de la base de datos un campo
 delete from empleados where cod=1
select * from empleados
rollback transaction xx--y rollback para traer de nuevo el campo
commit transaction xx--comit es para confirmar la transsaccion
select * from empleados
begin transaction bb
delete from empleados
if @@error>0
rollback transaction bb
else 
commit transaction bb
--variable es un espacio que yo creo en la memoriaa ram 
//////////////////////////////////////////////////////////////////
--Arrays en las bases de datos son las tablas 
declare @edad int
set @edad=18
set @edad(select edad from empleados
where cod=1)
print 'la respuesta es: ' + 
convert(nvarchar (50),@edad)
select @edad as edad-empleados

declare @i int=0
while (@i<= 9)
begin
set @i= @i + 1
end


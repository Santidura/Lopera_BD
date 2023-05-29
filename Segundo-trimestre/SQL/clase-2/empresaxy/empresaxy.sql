create database empresaxy;

GO

use empresaxy

GO

create TABLE products(
    id_pro int primary key identity(1,1),
    nombre_pro nvarchar (100) NOT NULL,
    valor money NOT NULL

)
insert into products(nombre_pro,valor) values('equipo',59000),('equipo-2',58000),('equipo-3',59000),('equipo-4',59000),('equipo-5',59300),('equipo-5',59040),('equipo-5',55400),('equipo-5',52340),('equipo-5',124000)
select * from products
create table cliente(id_cedula int primary key,
	nombre nvarchar(100) not null,
	apellido nvarchar(100),
	telefono int not null,
	ingresos int not null
)

create table factura(
	id_factura int primary key,
	id_pro int foreign key references products(id_pro),
	id_cedula int foreign key references cliente(id_cedula),
	cantidad int 
)
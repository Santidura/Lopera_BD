create database bd_tienda
GO

use bd_tienda

GO
create table categorias(
    id_cate int primary key not NULL,
    nom varchar)

    insert into categorias(id,nom) VALUES(1,computadores),(2,lacteos)

GO

create table productos(
    id_pro int primary key NOT NULL,
    nom varchar,
    id_categoria int foreign key references categorias(id_cate) NOT NULL
)

insert into productos(id,nom,id_cate) values(1,'usb',1),(2,'cds',1),(3,'leche',2)

 GO


 create table facturas(
    id_fac int primary key not null,
    fecha date
 )   
 insert into facturas(id,fecha) value(100,'10-10-2021'),(101,'10-10-2020'),(102,'10-10-2023')

 GO
 create table detalle_factura_productos(
    id_fp int primary key not null,
    id_facturas int foreign key references facturas(id_fac) not null,
    id_productos int foreign key references productos(id_pro) not null ,
    cant int
 )

 insert into detalle_factura_productos(id_fp,id_fac,id_pro,cant) values (300,101,1,20),(301,101,2,10)
create database  BD_HOSPITAL

GO

use BD_HOSPITAL

GO
create table clientes(
    id_cli int primary key NOT NULL,
    nom nvarchar(100)
)
insert into clientes(id_cli,nom) VALUES(100,'carlos'),(101,'maria'),(102,'sandra'),(103,'monica'),(104,'leidy')
select* from clientes

GO

create table doctores(id_doc int primary key NOT NULL,
    nom nvarchar(100)
)

insert into doctores(id_doc,nom) VALUES(1,'juan'),(2,'matias'),(3,'esteban')
select * from doctores

create table citas(id_cod_cita int primary key NOT NULL,fecha date, id_cli int foreign key references clientes, id_doc int foreign key references doctores )

insert into citas (id_cod_cita,fecha,id_cli,id_doc) VALUES(1,'11-11-2023',100,1),(2,'12-12-2022',101,1),(3,'11-10-2022',103,3),(4,'10-10-2023',104,1)
select * from citas

create table consultorios(id int primary key not null,num nvarchar(100))
insert into consultorios(id,num) values(1,10),(2,20),(3,30)
select * from consultorios

alter table doctores add id_cons int foreign key references consultorios(id)

update doctores set id_cons=1 where id_doc=1
update doctores set id_cons=2 where id_doc=2
update doctores set id_cons=3 where id_doc=3

select c.num , d.nom from doctores d inner join consultorios c on d.id_doc=c.id

select * from clientes
select * from doctores
select * from citas
select * from consultorios
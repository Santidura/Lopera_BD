create database papita
go
use papita
go
create table departamentos(id_dep int primary key not null, nom varchar(100))
insert into departamentos(id_dep,nom) values(1,'medellin'),(2,'cauca')
select * from departamentos
create table ciudad(id_ciu int primary key not null, nom varchar(50),id_dep int foreign key references departamentos)
insert into ciudad(id_ciu,nom,id_dep) values(1,'casa',1),(2,'casa_2',2)
select * from ciudad
create table empresas(id_em int primary key not null,nom varchar(100),id_ciu int foreign key references ciudad)
insert into empresas(id_em,nom,id_ciu) values(1,'a.sa',1),(2,'cauca.sa',2)
select * from empresas

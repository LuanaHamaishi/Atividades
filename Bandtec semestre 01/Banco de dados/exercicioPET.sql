CREATE DATABASE Petshop;

USE PetShop;

CREATE TABLE Cliente (
IdCiente int primary key auto_increment ,
NomeCliente VARCHAR (50),
EndereçoCli varchar (30),
FoneFixo varchar (20),
FoneMovel varchar (20)
);

CREATE TABLE Pet (
IdPet int primary key auto_increment ,
tipo varchar (20),
nome varchar (20),
raça varchar (30),
Data_nasc date 
) auto_increment = 101;

alter table pet add column fkCliente int;
alter table pet add foreign key (fkCliente) references Cliente (idCiente);

Alter table Cliente rename column  idCiente to IdCliente;

insert into cliente values 
(null , 'Vanderson Cunha' , 'Rua das graças' , 11902342234 , 1132434567),
(null , 'Amélia Tipo a margarina' , 'Rua nova vila' , 1192323564 , 1140326754),
(null , 'Alemão' , 'Rua alba ' , 11908782342, 1134528576 );

select * from cliente;

insert into pet values 
(null , 'Cachorro' , 'Linda' , 'Labrador' , '2008-06-18', 3),
(null , 'Gato' , 'Pandora' , 'SRD' , '2016-07-13', 2),
(null , 'Peixe' , 'Glub' , 'Beta' , '2021-03-10', 1);

select * from pet;

select * from pet join cliente on fkCliente = idCliente;

insert into cliente values 
(null , 'Larissa Santos' , 'Rua 4' , 11936475839 , 1123235643),
(null , 'Juan Carlos' , 'Rua Simão lopes' , 11987893424 , 1129467345),
(null , 'Brenno Alves' , 'Rua angaturama' , 11934728375 , 1129460810),
(null, 'Aline Barros' , 'Estrada das lagrimas' , 11922222233 , 1129374020),
(null, 'Marco Alar' , 'Doutor afs' , 11923435768, 1148592028);

insert into pet values 
(null , 'Vaca' , 'Mimosa' , 'Vaca' , '2019-09-29', 4 ),
(null, 'Furão' , 'Doug' , 'Ferret' , '2020-02-01' , 5),
(null , 'Macaco' , 'Dolly' , 'Prego' , '2020-12-25' , 6),
(null, 'Salamandra' , 'Maria' , 'Salamandra' , '2012-03-04' , 7),
(null, 'Sapo' , 'Cururu' , 'Sapo pedra' , '2015-11-11', 8); 

select * from pet join cliente on fkCliente = idCliente;

select * from cliente;

select * from pet ;

Select * from pet Order by nome ASC;

ALTER TABLE Cliente MODIFY COLUMN nomeCliente varchar(75);


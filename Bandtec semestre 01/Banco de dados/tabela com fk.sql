create database Atletas1;

use Atletas1; 

create table atleta ( 
idAleta int primary key, nome varchar (40),
modalidade varchar (40), Medalhas int
);

insert into atleta values ('2021001','Rebeca Andrade','Ginástica Artística', '2'),
('2021002','Ítalo Ferreira','Surfe', '1'),
('2021003','Abner teixeira','Boxe','1'),
('2021004','Beatriz Ferreira', 'Boxe', '1'),
('2021005','Laura Pigossi','Tênis', '1'),
('2021006','Luisa Stefani','Tênis','1'),
('2021007','Rayssa Leal', 'Skate','1'),
('2021008','Kelvin Roefler','Skate','1');

-- selecionar todos da tabela atleta
Select * from Atleta;

-- selecionar somente nome e as medalhas dos atletas
Select nome, medalhas from Atleta;

-- Selecionar todos os atletas skatistas
Select * from Atleta where modalidade like 'Skate';

-- selecionar atletas que tenham "s" no nome
Select * from Atleta where nome like '%s%';

-- selecionar atletas com o nome começando com L
Select * from Atleta where nome like 'L%';

-- selecionar atletas que tenham a ultima letra do nome A
Select * from Atleta where nome like '% %a';

-- ordenar o nome dos atletas em ordem crescente
select * from atleta order by nome asc; 

-- ordenar o nome dos atletas de nome decrescente
select * from atleta order by nome desc;

-- para adicionar uma coluna nova utilizamos alter table _____ add column _____;
alter table atleta add column dtNasc date;

-- para renomear uma coluna nós utilizamos;

alter table atleta rename column idAleta to idAtleta;



select * from atleta;



create table pais ( 
idPais int primary key auto_increment,
nomePais varchar (30),
capital varchar (30)
);

insert into pais values
(null, 'Japão' , 'Tokyo'),
(null , 'Brasil' , 'Brasília'),
(null , 'Bélgica' , 'Bruxelas'),
(null , 'Espanha' , 'Madrid'),
(null, 'Finlandia' , 'Helsinki');



alter table atleta add fkPais int ;

Alter table atleta add foreign key (fkPais) references pais(idPais);
desc atleta;
update atleta set fkpais =  
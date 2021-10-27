create database Sprint;

use Sprint; 

create table Atleta ( 
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

Select * from Atleta;

Select nome, medalhas from Atleta;

Select * from Atleta where modalidade like 'Skate';

Select * from Atleta where nome like '%s%';

Select * from Atleta where nome like 'L%';

Select * from Atleta where nome like '% %a';


drop table atleta;

create table musica ( idMusica int primary key,  Titulo varchar(40),
artista varchar(40), genero varchar(40)

);

insert into musica values ('4040001' , 'Tsuru no Shikaeshi' , 'TK from Ling Toiste sigure' , 'pop'),
('4040002' , 'Cry Baby', 'HIGE DANdism' , 'pop'),
('4040003' , 'World is mine' , 'VOCALOID' , 'pop'),
('4040004' , 'Fuyu no Hanashi' , 'Given' , 'rock'),
('4040005' , 'Centimeter' , 'the peggies' , 'rock'),
('4040006' , 'ODD future' , 'UVERworld' , 'rock'),
('4040007' , 'Rain on me' , 'Lady Gaga, Ariana Grande' , 'pop');

select * from musica;

select titulo, artista from musica;

select * from musica where genero = 'rock'; 

select * from musica where artista = 'the peggies';

select * from musica where titulo like 'C%';

select * from musica where titulo like '% %e';

select * from musica where genero like '_o%';

select * from musica where titulo like '% %h_';

drop table musica; 

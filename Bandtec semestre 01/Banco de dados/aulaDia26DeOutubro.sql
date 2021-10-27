create database exemplo;

use exemplo;

create table faculdade (
idFaculdade int primary key auto_increment,
nomeFacul varchar (45)
);

create table aluno (
ra int ,
fkFacul int,
nomeAluno varchar(45),
primary key (ra, fkFacul),
foreign key (fkFacul) references faculdade (idFaculdade)
);

insert into faculdade values
(null, 'Bandtec'),
(null, 'Fatec'),
(null , 'USP');

insert into aluno values
(50000 , 1,'Julia' ),
(50001 , 1,'Daniel'),
(50000 , 2,'Heitor' ),
(50000 , 3,'Fernanda' );

select * from aluno join faculdade on fkFacul = idFaculdade;

insert into faculdade values 
(null , 'Fiap');

select nomeAluno , nomeFacul from faculdade left join aluno on fkFacul = idFaculdade;

select * from faculdade;



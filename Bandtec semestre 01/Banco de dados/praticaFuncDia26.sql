create database PraticaFuncionario;

use PraticaFuncionario;

create table setor(
idSetor int primary key auto_increment,
nomeSetor varchar (45),
andar int
);

create table funcionario(
idFunc int primary key auto_increment,
nomeFunc varchar (45),
telefone varchar(20),
salario double,
		check (salario > 0),
fkSetor int,

);

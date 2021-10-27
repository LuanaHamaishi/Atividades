create database exercicio ;

use exercicio;

create table empregado (
idEmpregado int primary key auto_increment,
nomeEmp varchar (45),
salario decimal (10,2)
);

create table dependente (
Depend int,
fkEmp int,
primary key (Depend , fkEmp),
nomeDepen varchar(45),
dataNasc date,
foreign key (fkEmp) references empregado(idEmpregado)
);


insert into empregado values
(null , 'Cleide' , 3000.92),
(null , 'Debora' , 4500.00),
(null , 'Ana' , 2900.34),
(null , 'Carlos' , 5000.00),
(null , 'Julio' , 6000.00),
(null , 'Francisco' , 4300.00);

insert into dependente values
(200, 1 , 'Alessandra' , '2009-12-12'),
(202, 1 , 'Ana Luiza' , '2009-04-20'),
(203, 2 , 'Janio' , '2004-11-23'),
(204, 3 , 'Kaio' , '2008-12-30'),
(205, 4 , 'Fred' , '2009-01-01'),
(206, 5 , 'Alice' , '2009-04-30');

select nomeEmp, nomeDepen from dependente right join empregado on idEmpregado = fkEmp;
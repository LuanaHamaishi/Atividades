create database exercicio2;

use exercicio2;

create table funcionario (
idFunc int primary key auto_increment,
nomeFunc varchar (45),
genero varchar (3),
		check (genero = 'f' or genero = 'm'),
salario double,
check (salario > 0),
CPF char (11),
fkSuper int,
foreign key (fkSuper) references funcionario(idFunc)
) auto_increment = 1000;

insert into funcionario values 
(null , 'Kaio ' , 'm' , 10000.00 , '12341234567' , null),
(null , 'Fernanda' , 'f' , 4000.00 , '98789712345' , 1000),
(null , 'Diana' , 'f' , 7000.00 , '456321897' , 1000),
(null , 'Alex' , 'm' , 9000.00 , '45366758324' , null),
(null , 'Victor' , 'm' , 1000.00 , '94751264024' , 1003),
(null , 'Wellyngton' , 'm' , 2000.00 , '73280124724' , 1004),
(null , 'Hannah' , 'f' , 3000.00 , '20194639910' , 1004),
(null , 'Giulia' , 'f' , 1300.00 , '36291038263' , 1000),
(null , 'Marcella' , 'f' , 1700.00 , '91847829910' , 1003),
(null , 'Junior' , 'm' , 2000.00 , '73190364958' , 1006),
(null , 'Geraldo' , 'm' , 3900.00 , '12309876345' , 1005);

select * from funcionario;

select * from funcionario as func
		join funcionario as supervisor
				on func.fkSuper = supervisor.idFunc;
                
select func.nomeFunc as nomeFunc, supervisor.nomeFunc as nomeSuper from funcionario as func
			join funcionario as supervisor
				on func.fkSuper = supervisor.idFunc
							order by nomeSuper;

create table dependente (
Depend int,
fkFunc int,
primary key (Depend , fkFunc),
nomeDepen varchar(45),
dataNasc date,
foreign key (fkFunc) references funcionario(idFunc)
);

insert into dependente values
(100, 1000 , 'Kleiton' , '2004-05-19'),
(101, 1009 , 'Kleiton' , '2006-02-02'),
(102, 1003 , 'Kleiton' , '2003-10-02'),
(103, 1002 , 'Kleiton' , '2007-10-06'),
(104, 1004 , 'Kleiton' , '2002-04-28'),
(105, 1007 , 'Kleiton' , '2009-06-20'),
(106, 1002 , 'Kleiton' , '2003-01-01'),
(107, 1006 , 'Kleiton' , '2008-03-02'),
(108, 1003 , 'Kleiton' , '2005-08-17'),
(109, 1007 , 'Kleiton' , '2006-07-16'),
(110, 1008 , 'Kleiton' , '2009-09-29'),
(111, 1003 , 'Kleiton' , '2007-10-19'),
(112, 1009 , 'Kleiton' , '2004-09-12');




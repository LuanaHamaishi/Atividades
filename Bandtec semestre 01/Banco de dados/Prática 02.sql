-- Criando o banco de dados
CREATE DATABASE Revista;

-- Usando o banco de dados
USE Revista;
 
 -- A tabela
 
CREATE TABLE revista (
idRevista INT PRIMARY KEY,
nome VARCHAR (40),
categoria VARCHAR (30));

--  Inserindo dados na tabela

INSERT INTO revista VALUES ('1', 'superinteressante' ,'' ),
('2', 'Quatro rodas' , ''),
('3' , 'Isto é', ''),
('4' , 'Bravo' , ''  ); 

-- Exibir todos os intens da tabela

SELECT * FROM revista;

-- atualizando os dados

UPDATE revista SET categoria = 'artes' WHERE idrevista = 4;
UPDATE revista SET categoria = 'Automóveis' WHERE idrevista = 2;
UPDATE revista SET categoria = 'Curiosidades' WHERE idrevista = 1;
UPDATE revista SET categoria = 'Atualidades' WHERE idrevista = 3;

-- Vendo se tudo está atualizado certo

SELECT * FROM revista ;

-- Inserindo novos valores 

INSERT INTO revista VALUES ('5' , 'Amateur' , 'Artes' ),
('6' , 'TecnoBLog' , 'Tecnologia'),
('7' , 'Aroma' , 'Gastronomia');

-- Conferindo novamente 

SELECT * FROM revista;

-- Descrição da estrutura da tabela

DESC revista;

-- Alterando ...










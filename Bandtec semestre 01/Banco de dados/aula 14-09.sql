use faculdade;

create table sensor (
idSendor int primary key auto_increment,
nomeSensor varchar (50),
localSensor varchar (70),
temperatura double not null,
dtTemp datetime default current_timestamp,
statusSens varchar (40),
check (statusSens = 'ativo' or statusSens = 'inativo')
);

select sysdate();

-- int
-- float: 7 dígitos (32-bit) 0,76
-- double: 15 dígitos (64-bit) 1,234567
-- decimal: 28 dígitos (128-bit) 500,87654
-- decimal: (8,5)
-- decimal obrigatóriamente precisa dos parênteses ()

insert into sensor (nomeSensor, localSensor, temperatura, statusSens)values
('sensor A' , 'Estufa Alfa' , 38.4 , 'Manutenção');

insert into sensor (nomeSensor, localSensor, temperatura, statusSens)values
('sensor A' , 'Estufa Alfa' , 38.4 , 'ativo');

select * from sensor;

alter table sensor drop check sensor_chk_1;

alter table sensor add check (statusSens = 'ativo' or statusSens = 'inativo' or statusSens = 'manutenção');

insert into sensor (nomeSensor, localSensor, temperatura, statusSens)values
('sensor B' , 'Estufa Beta' , 38.4 , 'Perda total');

insert into sensor (nomeSensor, localSensor, temperatura, statusSens)values
('Sensor C' , 'Estufa Charlie' , 20.7 , 'Ativo'),
('Sensor D' , 'Estufa Delta' , 26.2 , 'Ativo'),
('Sensor E' , 'Estufa Echo' , 30.7 , 'inativo');

select * from sensor;

delete from sensor where idSendor = 2;

select count(idSendor) from sensor;
select count(localSensor) from sensor;

insert into sensor (nomeSensor, localSensor, temperatura, statusSens)values
('Sensor F' , 'Estufa foxtrot' , 4.67 , 'inativo'),
('Sensor G' , 'Estufa Golf' , 26.2 , 'Ativo'),
('Sensor H' , 'Estufa Hotel' , 30.7 , 'Manutenção'),
('Sensor I' , 'Estufa India' , 34.0 , 'ativo'),
('Sensor J' , 'Estufa Julier' , 12.5 , 'Manutenção');

select sum(temperatura) from sensor;

select avg(temperatura) from sensor;

select round(avg(temperatura),2)from sensor;

select truncate(avg(temperatura) ,2) from sensor;

select max(temperatura) from sensor;

select min(temperatura)from sensor;

select min(temperatura), max(temperatura)from sensor;

select min(temperatura) as 'temperatura mínima' , 
       max(temperatura) as 'Temperatura máxima' from sensor;


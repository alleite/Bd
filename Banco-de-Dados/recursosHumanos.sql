create database recursosHumanos
create table funcionario(
idFuncionario int not null primary key,
nome varchar (50) null, 
endereço varchar(100) null, 
cidade varchar(50) null, 
estado char(2) null, 
email varchar(50) null unique,
dataNascto date null);

alter table funcionario add salário decimal(7,2) null, add cargos varchar(2) null;

alter table funcionario drop column cargos;

alter table funcionario add cargo varchar(2) null, add ativo char(2);
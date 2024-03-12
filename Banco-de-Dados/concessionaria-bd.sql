create database concessionaria
create table Veiculo (
chassi VARCHAR (17) not null primary key,
marca VARCHAR (10) not null,
modelo VARCHAR(20) not null,
anoDeFabricação INTEGER(4) not null,
anoDeModelo INTEGER(4) not null,
combustivel VARCHAR(1) not null )

alter table veiculo add valor DECIMAL not null;
alter table veiculo add motor VARCHAR (20) not null

alter table veiculo drop motor;

drop table veiculo;

drop database concessionaria;
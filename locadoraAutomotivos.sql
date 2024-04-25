create database LocadoraAutos
create table usuario (
nome varchar(40) not null,
CNH integer(9) not null primary key,
telefone integer(11) not null, 
idade integer(2) not null, 
RG integer(9) not null, 
email varchar(100) not null,
rua varchar(100) not null,
número integer(4) not null,
bairro varchar(20) not null, 
cidade varchar(40) not null);

create table categoria(
Preço diaria numeric(7,2) not null,
codigoCategoria integer(5) not null, 
Descição varchar(400) not null);

create table carro(
n° de chassi varchar(10) not null primary key,
placa varchar(10) not null,
ano integer(4) not null, 
cor varchar(10) not null,
foreign key(codigoCategoria) references categoria (codigoCategoria));

create table oficina (
create database LocadoraAutos
create table usuario (
nome varchar(40) not null,
CNH integer(9) not null primary key,
idade integer(2) not null, 
RG integer(9) not null, 
rua varchar(100) not null,
número integer(4) not null,
bairro varchar(20) not null, 
cidade varchar(40) not null);

create table telefoneUsuario(
telefone int not null, 
codigoTel int not null primary key,
CNH integer(9) not null, 
foreign key (CNH) references usuario(CNH));

create table emailUser (
email varchar(100) not null,
codigoEmail int(5) not null primary key,
CNH integer(9) not null,
foreign key(CNH) references usuario(CNH));

create table categoria(
PreçoDiaria decimal(7) not null,
codigoCategoria integer(5) not null primary key, 
Descição varchar(400) not null);

create table carro(
nChassi varchar(10) not null primary key,
placa varchar(10) not null,
ano integer(4) not null, 
cor varchar(10) not null,
codigoCategoria integer(5) not null,
foreign key(codigoCategoria) references categoria (codigoCategoria));

create table oficina (
nome varchar(100) not null,
email varchar(100) not null, 
CNPJ int(9) not null primary key,
número integer(4) not null,
bairro varchar(20) not null, 
cidade varchar(40) not null);

create table tellOficina (locadoraautos
telefone int not null, 
codigoTelOficina int not null primary key,
CNPJ int(9) not null,
foreign key (CNPJ) references oficina(CNPJ));

create table aloca(
dia int(2) not null, 
hora time(4) not null, 
CNH integer(9) not null, 
nChassi varchar(10) not null ,
foreign key (CNH) references usuario(CNH),
foreign key (nChassi) references carro(nChassi)
);

create table manutenção(
dia int(2) not null,
codgManutencao integer(9) not null primary key, 
valor decimal(7) not null,
descrição varchar(400) not null,
nChassi varchar(10) not null,
CNPJ int(9) not null,
foreign key (CNPJ) references oficina(CNPJ),
foreign key (nChassi) references carro(nChassi)
);

alter table carro add marca varchar(40) not null;

alter table oficina add rua varchar(100) not null;
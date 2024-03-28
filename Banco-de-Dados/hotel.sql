create database Hotel
create table cliente (
RG int(50) primary key not null, 
nome varchar(250) not null, 
telefone varchar(50) not null, 
rua varchar(60) not null,
bairro varchar(30) not null, 
cidade varchar(30) not null,
sexo Boolean not null);

create table servico (
CodigoServiço int(50) primary key not null, 
descrição varchar(250) not null, 
valor decimal(4,2) not null,
tipo varchar(100) not null );

create table quarto(
número int(50) primary key not null, 
RG int(50) not null,
descrição varchar(250) not null, 
tipo varchar(60) not null, 
andar int(20) not null, 
preço decimal(4,2) not null, 
foreign key(RG) references cliente(RG));

create table quartoReservado (
RG int(50) not null, 
número int(50) not null, 
codigoReserva int(50) primary key not null, 
quantidadeDias int(6) not null, 
DataReserva date not null,
foreign key(número) references quarto(número));

create table quartoOcupado (
RG int(50) not null,
número int(50) not null,
CodigoOcupado int(50) primary key not null,
hora time not null, 
DataEntrada date not null, 
DataSaida date not null, 
foreign key(número) references quarto(número));

create table pagamento (
CodigoServiço int(50) not null,
CodigoOcupado int(50) not null, 
valorTotal decimal(4,2) not null,
foreign key(CodigoServiço) references servico(CodigoServiço),
foreign key(CodigoOcupado) references quartoOcupado(CodigoOcupado));
create database lojaPecas

create table Cliente(
CPF int(15) not null primary key,
nome varchar(200) not null, 
rua varchar(50) not null, 
bairro varchar(50) not null, 
cidade varchar(50) not null, 
RG int(20) not null);

create table Mercadoria(
codigo int(20) not null primary key,
descrição varchar(50) not null, 
preço decimal(5,2) not null, 
QntdeEstoque int(5) not null);

create table Fornecedores(
codigoInterno int(15) not null primary key, 
nome varchar(200) not null, 
rua varchar(50) not null, 
bairro varchar(50) not null, 
cidade varchar(50) not null);

create table emailCliente (
codEmail int(10) not null primary key,
email varchar(30) not null,
CPF int(15) not null,
foreign key(CPF) references Cliente(CPF));

create table Pedido (
notaFiscal int(15) not null primary key,
preçoTotal decimal(5,2) not null, 
dataPedido date not null,
CPF int(15) not null,
foreign key(CPF) references Cliente(CPF));

create table nacionais (
codigoInterno int(15) not null,
cidade varchar(50) not null,
CNPJ int(15) not null primary key,
foreign key(codigoInterno) references Fornecedores(codigoInterno));

create table internacionais(
codigoInterno int(15) not null,
transporte varchar(40) not null, 
pais varchar(30) not null, 
moeda varchar(30) not null,
foreign key(codigoInterno) references Fornecedores(codigoInterno));

create table telefoneFornecedores(
codTelefone int(10) not null primary key,
telefoneFornecedores varchar(30) not null,
codigoInterno int(15) not null,
foreign key(codigoInterno) references Fornecedores(codigoInterno));

create table ItensPedidos(
codigo int(20) not null,
notaFiscal int(15) not null,
quantidade int(5) not null,
codigoItem int(10) not null,
foreign key(codigo) references Mercadoria(codigo),
foreign key(notaFiscal) references Pedido(notaFiscal),
primary key(codigo, notaFiscal));

create table merdFornecidas (
codigo int(20) not null,
codigoInterno int(15) not null,
foreign key(codigoInterno) references Fornecedores(codigoInterno),
foreign key(codigo) references Mercadoria(codigo),
primary key(codigo, codigoInterno));
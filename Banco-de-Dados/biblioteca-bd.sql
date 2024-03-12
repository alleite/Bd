create database biblioteca
create table livro (
codigo integer(4) not null primary key,
nome varchar(20) not null, 
anoLançamento integer(4) not null );

create table editora (
CNPJ integer(15) not null primary key, 
nome varchar(30) not null,
endereço varchar(100) not null, 
telefone integer(12) not null);

create table autores (
CPF integer(9) not null primary key, 
nome varchar(30) not null ,
endereço varchar(100) not null , 
email varchar(12) not null);

create table edições (
ISBN integer(15) not null primary key, 
edição varchar(30) not null,
númeroPG integer not null, 
valor decimal not null);
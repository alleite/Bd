create database chaveEstrangeira
create table funcionario(
matricula int(6) not null primary key,
nome varchar(50) not null,
endereco varchar(50) not null, 
cargo varchar(20) not null);

create table dependete (
rg varchar(12) not null primary key,
nome varchar(50) not null, 
parentesco varchar(10) not null,
matricula int(6) not null,
foreign key(matricula) references funcionario (matricula));

create table pessoa(
Id int(6) not null,
cod int(6) not null,
nome varchar(255) not null, 
sobrenome varchar(255),
primary key (id, cod));

create table DepenFun(
rg varchar(12) not null,
matricula int(6) not null, 
foreign key(rg) references dependente(rg), 
foreign key(matricula) references funcionario(matricula),
primary key(rg, matricula));
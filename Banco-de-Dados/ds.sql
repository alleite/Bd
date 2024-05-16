create database crud_csharp;
create table colaborador(
codigo_colaborador int(11) primary key not null,
nome_colaborador varchar(50) not null, 
sobrenome_colaborador varchar(50) not null,
cpf_colaborador varchar(50) not null
)
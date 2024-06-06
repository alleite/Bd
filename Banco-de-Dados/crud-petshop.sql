create database petshop
create table cliente(
nome_pet varchar(100) not null,
raca_pet varchar(50) not null,
idade_pet int(2) not null,
nome_tutor varchar(100) not null,
telefone int(11) not null,
cpf int(9) not null,
codigo int not null,
primary key (codigo)
)

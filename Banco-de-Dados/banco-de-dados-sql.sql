drop database teste ;

create database Ana ; 
create table Tipo (
Código integer not null primary key,
Nome varchar(30) not null);

alter table Tipo add Obs varchar(30) not null;

alter table Tipo drop Obs ; 
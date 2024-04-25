create database anaLuizaLeite
create table aluno (
codigoMatricula int(5) primary key not null,
nome varchar(250) not null,
altura int(3) not null,
peso float(3) not null, 
dataNascimento date not null,
dataMatricula date not null, 
rua varchar(100) not null,
bairro varchar(50) not null, 
cidade varchar(100) not null);

create table emailAluno(
codigoEmail int(10) not null primary key, 
email varchar(30) not null, 
codigoMatricula int(5) not null,
foreign key(codigoMatricula) references aluno(codigoMatricula));

create table tellAluno(
codigoTelefone int(10) not null primary key, 
telefone int(12) not null, 
codigoMatricula int(5) not null,
foreign key(codigoMatricula) references aluno(codigoMatricula));

create table instrutor(
RG int(10) primary key not null, 
nome varchar(250) not null, 
titulacao varchar(100) not null, 
dataNascimento date not null);

create table emailInstrutor(
codigoEmail int(10) not null primary key, 
email varchar(30) not null, 
RG int(10) not null,
foreign key(RG) references instrutor(RG));

create table tellInstrutor(
codigoTelefone int(10) not null primary key, 
telefone int(12) not null, 
RG int(10) not null,
foreign key(RG) references instrutor(RG));

create table AlunoMonitor(
codigoMatricula int(10) primary key not null, 
nome varchar(250) not null);

create table turma(
codigoTurma int(5) not null,
tipoAtividade varchar(250) not null, 
horarioAula time not null, 
dataInicial date not null,
dataFinal date not null,
numeroAlunos int(45) not null,
RG int(10) not null,
codigoMatricula int(5) not null,
foreign key(codigoMatricula) references aluno(codigoMatricula),
foreign key(RG) references instrutor(RG), 
primary key(RG, codigoMatricula));

create table matricula(
codigoTurma int(5) not null,
codigoMatricula int(5) not null,
dataMatricula date not null, 
registroAusencia int(50) not null,
foreign key(codigoTurma) references turma(codigoTurma),
foreign key(codigoMatricula) references aluno(codigoMatricula),
primary key(codigoTurma, codigoMatricula));
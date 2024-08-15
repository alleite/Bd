/* 1) */ 
create database Compras
/* 3) */
create table cliente(
idCliente int auto_increment primary key,
nome varchar(50) not null, 
endereço varchar(50) not null,
cidade varchar(50) not null,
estado char(2) not null);

create table produto(
idProduto int auto_increment primary key,
descricao varchar(50) not null, 
preco decimal(5,2) not null,
qtde int not null);

create table compra(
idCompra int auto_increment primary key,
idCliente int not null,
idProduto int not null,
dataCompra datetime not null,
qtde int not null,
valor decimal(5,2) not null,
foreign key(idCliente) references cliente(idCliente),
foreign key(idProduto) references produto(idProduto));

/* 4) */
alter table cliente add sexo char(1) not null;

/* 5) */
Insert into cliente values 
(1, 'Jose de Oliveira', 'Av. Jatobã,34' , 'Jundiai', 'SP', 'F'),
(2,'Maria da Silva', 'Av. Presidente,12' , 'Itatiba', 'MG', 'F'),
(3,'Antonio Carlos', 'R. Florença,5' , 'Jundiai', 'SP', 'M'),
(4,'Luisa de Souza', 'Av. Jatobá,45' , 'Jundiai', 'MG', 'F'),
(5,'Carlos de Souza', 'Av. Jatobá,45' , 'Jundiai', 'SP', 'M');

/* 6) */
Insert into produto values 
(1, 'Lápis', '1.50' , '20'),
(2,'Borracha', '1.00' , '15'),
(3,'Caneta', '1.75' , '35'),
(4,'Compasso', '5.20' , '10'),
(5,'Régua', '0.75' , '16'),
(6,'Papel Sulfite', '10.50' , '5');

/* 7) */
Insert into compra values
(1,'1', '1', '2010-12-01', '2', '1.50'),
(2, '2', '1', '2010-12-03','5', '1.50'),
(3, '1' ,'3' ,'2011-01-05','13','1.75'),
(4, '1', '4', '2011-01-11' '1', '5.20'),
(5, '3' ,'2' ,'2011-03-16' ,'7' ,'1.00'),
(6, '4' ,'5', '2011-05-21' ,'10' ,'0.75'),
(7, '2' ,'6', '2011-06-07', '2' ,'10.50'),
(8, '5', '3', '2011-06-07' , '2' ,'1.75')
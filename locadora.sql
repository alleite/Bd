CREATE DATABASE locadora
CREATE TABLE cliente (
nome VARCHAR(100) NOT NULL,
telefone INT(11) NOT NULL, 
RG INT(11) PRIMARY KEY NOT NULL,
codigoCliente INT not NULL,
nomeFilme VARCHAR(100) NOT NULL, 
codigoFilme INT NOT NULL, 
dataRetirada INT(8) NOT NULL,
dataDevolucao INT(8) NOT NULL)
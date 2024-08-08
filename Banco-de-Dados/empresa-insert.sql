create database empresa;

create table funcionario(
idFuncionario int not null primary key,
nome varchar(50) null,
endereço varchar(100) null,
cidade varchar(50) null, 
estado char(2) null, 
email varchar(50) null unique, 
dataNascto date null
);

alter table funcionario add salário decimal(7,2) null, add cargos varchar(2) null;
alter table funcionario add ativo bit;

insert into funcionario (idFuncionario, nome, endereço, cidade, estado, email, dataNascto) values (1, 'José da Silva ', 'Av. São Paulo, 34', 'Itú', 'SP', 'zesilva@yahoo.com.br' , '1991-02-24');

insert into funcionario values (2, 'João de Oliveira', 'Rua da Saude, 138' , 'Jundiai' , 'SP', 'jojo@hotmail.com' , '1988-01-11' , '750' , 'TI' , 1  );

insert into funcionario values (3, 'Ana Pimenta', 'Rua Saude, 11', 'Jundiai' , 'SP', 'pimentinha@hotmail.com', '1987-01-01' , '750' , 'TI', 0) , 
(4, 'Mario Lopes' , 'Rua Angelica, 143' , 'Jundiai', 'SP', 'mlopes@hotmail.com', '1985-04-10' , 750, 'TI' , 0) ;

insert into funcionario (idFuncionario, nome, endereço, cidade, estado, email, dataNascto) values 
(5, 'Carlos Dias', 'Av. Lapa, 121', 'Itu', 'SP', 'carlao@gmail.com', '1990-03-31'), 
(6, 'Ana Maria da Cunha', 'Av. Sao Paulo, 388', 'Itu', 'SP', 'aninhacunha@gmail.com', '1988-04-12'), 
(7, 'Claudia Regina Martins', 'Rua Holanda, 89' , 'Campinas' , 'SP', 'cregina@gmail.com' , '1988-12-04'),
(8, 'Marcela Tatho', 'Rua Bélgica, 43' , 'Campinas' , 'SP', 'marctatho@gmail.com' , '1987-11-09'),
(9, 'Jorge Luis Rodrigues', 'Av. da Saudade, 1989' , 'São Paulo' , 'SP', 'jorgeluis@yahoo.com.br' , '1990-05-05'),
(10, 'Ana Paula Camargo', 'Rua Costa e Silva, 33' , 'Jundiai' , 'SP', 'apcamargo@gmail.com' , '1991-06-30'),
(11, 'Ivo Cunha', 'Av. Raio de Luz, 100' , 'Campinas' , 'SP', 'ivo@bol.cim.br' , '1987-04-11'); 

update funcionario set cidade = 'Valinhos' where cidade = 'Itu';

update funcionario set cargos = 'AI' , salário = '1100' where cidade = 'Valinhos';
update funcionario set cargos = 'PC' , salário = '1700' where cidade = 'Campinas';
update funcionario set cargos = 'TI' , salário = '750' where cidade = 'Jundiai';

Select nome, salário *1.30 from funcionario;
Select salário * 0.20 from funcionario where cidade = 'Campinas';
Select nome,salário from funcionario where salário > 1500;
Select nome, cidade from funcionario where not cidade = 'Valinhos';
Select idFuncionario, cidade from funcionario where cidade = 'Valinhos' or cidade = 'Campinas';
Select idFuncionario, cargos, salário from funcionario where cidade <> 'São Paulo' and salário >= 1000;
Select nome from funcionario where cargos is null;
Select nome , salário from funcionario where salário between 500 and 1500;
Select nome, email from funcionario where email like '%@hotmail%';
Select nome, email from funcionario where email like '%.br';
Select nome, email from funcionario where email not like '%.com%';
Select nome, email from funcionario where nome like '__r%';

'Aula 4'
Select nome, day(dataNascto), month(dataNascto), year(dataNascto) from funcionario;
Select distinct monthname(dataNascto) from funcionario;
Select idFuncionario, nome, year(dataNascto) from funcionario where dataNascto like '%1987%';
Select nome, day(dataNascto) from funcionario where dataNascto like '%1988-04%';
Select nome, datediff (curdate(), dataNascto)*365 from funcionario;
Select idFuncionario, nome, year(dataNascto) from funcionario where dataNascto like '%1990-03%' and '%1990-05%';
Select nome, year(dataNascto) from funcionario where estado like '%SP%';
Select nome, dataNascto from funcionario where year(dataNascto) < 1990;
Select distinct cidade, estado from funcionario where year(dataNascto) > 1989;
Select * from funcionario where year(dataNascto) between 1988 and 1990; 
Select nome from funcionario where day(dataNascto) like '%30%';

'Aula 5'
Select nome, salário + PI() from funcionario;
Select sqrt(day(dataNascto)) from funcionario where cidade like 'Valinhos';
Select log(month(dataNascto)) from funcionario where year(dataNascto) = 1990;
Select nome, day(dataNascto) from funcionario where power(day(dataNascto),3) >= 1000;
Select salário from funcionario where round(salário * 1.115) > 1000;
Select abs(1500 - salário) from funcionario;
Select idFuncionario, sqrt(idFuncionario) from funcionario where year(dataNascto) < 1989 and month(dataNascto) < 4;
Select nome, round(salário * 0.35, 1) from funcionario;
Select log(idFuncionario) from funcionario;
Select sqrt(idFuncionario) from funcionario;
Select power(idFuncionario,2) from funcionario;
Select abs(idFuncionario - 10) from funcionario order by abs(idFuncionario - 10) desc;

'Aula 6'
Select upper(nome) from funcionario;
Select distinct length(month(dataNascto)), monthname(dataNascto) from funcionario;
Select replace(nome,' ','-') from funcionario;
Select left(nome,3), right(nome,3) from funcionario;
Select Sqrt(Length(nome)) from funcionario;
Select distinct substring(cidade, 3,5) from funcionario;
Select replace(nome,' ', '') from funcionario;
Select ascii(idFuncionario) from funcionario where cidade like 'Campinas';
Select ascii(nome) from funcionario where day(dataNascto) > 20;
Select rtrim(substring(cidade,1,4)) from funcionario;
Select ltrim(right(cidade,6)) from funcionario;
Select distinct lower(cidade) from funcionario;

'Aula 7'
select max(salário), min(salário) from funcionario where estado like'%SP%';
select sum(salário) as soma from funcionario where nome like '%Cunha%';

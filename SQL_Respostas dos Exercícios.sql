/*Capítulo 1*/
/*Exercicio 1*/
Create database Concessionaria

--Exercicio 2
use concessionaria

--Exercicio 3
create table Veiculo (
	chassi CHAR(17) Primary key,
	marca VARCHAR(10),
	modelo VARCHAR(20),
	anoFabricacao INT,
	anoModelo INT,
	combustivel CHAR(1)
)

--Exercicio 4
--Alter == alteração na tabela
alter table Veiculo
ADD valor money, motor VARCHAR(20)

--Exercicio 5
Alter table Veiculo
Drop Column motor


--Exercicio 6
--index == ele existe para facilitar a localização de conteúdos
Create index VeiculoMarcaModelo
On Veiculo (marca, modelo)


--Exercicio 7
Create index VeiculoAnoFabricacao
on Veiculo (anoFabricacao DESC)

--Exercicio 8
Drop index VeiculoMarcaModelo
on Veiculo

--Exercicio 9
Drop Table Veiculo

--Exercicio 10
Use master
Drop database Concessionaria

--Drops Que utilizei realizando esse Capitulo
drop database concessionaria
drop table Veiculo

/*Cápítulo 2*/
--Exercicio 1

create database empresa

use empresa

create table Funcionario(
	idFuncionario INT Primary key,
	nome VARCHAR(50),
	endereco VARCHAR(50),
	cidade VARCHAR(50),
	estado VARCHAR(50),
	email VARCHAR(50),
	dataNascto CHAR(10),
	cargo Varchar(50),
	salario Int
)

Insert into Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
Values
(5, 'Carlos Dias', 'Av. Lapa, 121', 'Itu', 'SP', 'carlao@gmail.com', '1990-03-31');

Insert into Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
Values
(6, 'Ana Maria da Cunha', 'Av. São Paulo, 388', 'Itu', 'SP', 'aninhacunha@gmail.com', '1988-04-12');

Insert into Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
Values
(7, 'Cláudia Regina Martins', 'Rua Holanda, 89', 'Campinas', 'SP', 'cregina@gmail.com', '1988-12-04');

Insert into Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
Values
(8, 'Marcela Tatho', 'Rua Bélgica, 43', 'Campinas', 'SP', 'marctatho@hotmail.com', '1987-11-09');

Insert into Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
Values
(9, 'Jorge Luis Rodrigues', 'Av. da Saudade, 1989', 'São Paulo', 'SP', 'jorgeluis@yahoo.com.br', '1990-05-05');

Insert into Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
Values
(10, 'Ana Paulo Camargo', 'Rua Costa e Silva', 'Jundiaí', 'SP', 'apcamargo@gmail.com', '1991-06-30');

Insert into Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
Values
(11, 'Ivo Cunha', 'Av. Raio de Luz, 100', 'Campinas', 'SP', 'ivo@bol.com.br', '1987-04-11');

Insert into Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
Values
(12, 'Carlos Luis de Souza', 'Rua Nicolau Coelho, 22', 'São Paulo', 'SP', 'cls@bol.com.br', '1988-04-30');

UPDATE Funcionario Set
cidade = 'Valinhos'
WHERE cidade = 'Itu'

Update Funcionario Set
cargo = 'AI', salario = 1100 -- auxiliar de informática
Where cidade = 'Valinhos'

Update Funcionario Set
cargo = 'PC', salario = 1700 -- programador de computador
Where cidade = 'Campinas'

Update Funcionario Set
cargo = 'TI', salario = 750 -- Técnico de informática
Where cidade = 'Jundiaí'

Select nome, cargo
From Funcionario

Select idFuncionario, email
From Funcionario
Where estado='SP'

Delete From Funcionario
Where idFuncionario = 5

Select Distinct cidade, estado
From Funcionario
Where cargo='PC'

/*Cápítulo 3*/
--Exercicio 1

--OBS: Utilizarei a table e a database do capitulo 2

Select nome, salario*1.30
From Funcionario

--Exercicio 2

Select nome, salario, salario*0.80
From Funcionario
Where cidade = 'Campinas'

--Exercicio 3

Select nome, salario
From Funcionario
Where salario > 1500

--Exercicio 4

Select nome, cidade
From Funcionario
Where Not cidade='Valinhos'

--Exercicio 5

Select idFuncionario, cidade
From Funcionario
Where cidade='Valinhos' OR cidade='Campinas'

--Exercicio 6

Select idFuncionario, cargo
From Funcionario
Where Not cidade='São Paulo' and salario >= 1000

--Exercicio 7

Select nome
From Funcionario
Where cargo is not null

--Exercicio 8

Select nome, salario
From Funcionario
Where salario Between 500 and 1500

--Exercicio 9

Select nome, email
From Funcionario
Where email like '%hotmail%'

--Exercicio 10

Select nome, email
from Funcionario
Where email like '%.br'
Order by nome

--Exercicio 11
Select nome, email
From Funcionario
Where email not like '%.com'
Order by nome

--Exercicio 12
Select nome, email
From Funcionario
Where email like '__r%'

/*Cápítulo 4*/
--Exercicio 1

Select nome, Day(dataNascto) dia, Month(dataNascto) mes,
Year(dataNascto) ano
From Funcionario

--Exercicio 2
Select distinct datename(month,dataNascto) as nome_mes
From Funcionario
Order by nome_mes

--Exercicio 3
Select idFuncionario, nome
From Funcionario
Where Year(dataNascto)=1987

--Exercicio 4
Select nome, day(dataNascto)
From Funcionario
Where Month(dataNascto)=4 and Year(dataNascto)=1988

--Exercicio 5
Select nome, dateadd(Month, 2, dataNascto)
From Funcionario

--Exercicio 6
Select nome, datediff(Year, dataNascto, GetDate())
From FUncionario

--Exercicio 7
Select idFuncionario, nome, Year(dataNascto)
From Funcionario
Where (Month(dataNascto) Between 3 and 5) and
Year(dataNascto)=1990

--Exercicio 8
Select nome, Year(dataNascto)
From Funcionario
Where estado='SP'

--Exercicio 9
Select nome
From Funcionario
Where Year(dataNascto) <1990

--Exercicio 10
Select Distinct cidade, estado
From Funcionario
Where Year(dataNascto) >1989

--Exercicio 11
Select *
From Funcionario
Where Year(dataNascto) in (1988, 1990)

--Exercicio 12
Select nome
From Funcionario
Where Day(dataNascto) = 30

/*Cápítulo 5*/
--Exercicio 1
Select nome, salario+PI()
From Funcionario

--Exercicio 2
Select SQRT(Day(dataNascto))
From Funcionario
Where cidade='Valinhos'

--Exercicio 3
Select Log(Month(dataNascto))
From Funcionario
Where Year(dataNascto)=1990

--Exercicio 4
Select nome, Day(dataNascto)
From Funcionario
Where Power(Day(dataNascto),3) >= 1000

--Exercicio 5
Select Round((salario * 1.156),0)
From Funcionario
Where salario > 1000

--Exercicio 6
Select ABS(1500 - salario)
From Funcionario

--Exercicio 7
Select idFuncionario, SQRT(idFuncionario)
From Funcionario
Where dataNascto < '1989-04-01'

--Exercicio 8
Select nome, Round((salario * 0.65),1)
From Funcionario

--Exercicio 9
Select Log(idFuncionario)
From Funcionario

--Exercicio 10
Select SQRT(idFuncionario)
From Funcionario

--Exercicio 11
Select Power(idFuncionario,2)
From Funcionario

--Exercicio 12
Select ABS(idFuncionario - 10) as valor_abs
From Funcionario
Order by valor_abs Desc

/*Cápítulo 6*/
--Exercicio 1
Select Upper(nome)
From Funcionario

--Exercicio 2
Select Distinct datename(month, dataNascto),
Len(DateName(Month, dataNascto))
From Funcionario

--Exercicio 3
Select Replace(nome,' ','-')
From Funcionario

--Exercicio 4
Select Left(nome,3), Right(nome,3)
From Funcionario

--Exercicio 5
Select SQRT(Len(nome))
From Funcionario

--Exercicio 6
Select Distinct Substring(cidade, 3,5)
From Funcionario

--Exercicio 7
Select Distinct Substring(cidade, 3,5)
From Funcionario

--Exercicio 8
Select Char(idFuncionario)
From Funcionario
Where cidade='Campinas'

--Exercicio 9
Select ASCII(nome)
From Funcionario
Where day(dataNascto) > 20

--Exercicio 10
Select RTRIM(Left(cidade,4))
From Funcionario

--Exercicio 11
Select LTRIM(Right(cidade, 6))
From Funcionario

--Exercicio 12
Select Distinct Lower(cidade)
From Funcionario

/*Cápítulo 7*/
--Exercicio 1
Select Max(salario), min(salario)
From Funcionario
Where estado='SP'

--Exercicio 2
Select Sum(salario)
From Funcionario
Where nome like '%Cunha'

--Exercicio 3
Select AVG(salario)
From Funcionario
Where email Like '%yahoo%'

--Exercicio 4
Select count(*)
From Funcionario
Where email Like '%br'

--Exercicio 5
Select Min(dataNascto)
From Funcionario

--Exercicio 6
Select Max(dataNascto) as Maior_Nascimento
From Funcionario

--Exercicio 7
Select Count(*) as Quantidade_de_Valinhos
From Funcionario
Where cidade='Valinhos'

--Exercicio 8
Select Sum(salario)
From Funcionario
Where cidade='Campinas'

--Exercicio 9
Select AVG(salario)
From Funcionario
Where cidade='São Paulo'

--Exercicio 10
Select Sum(salario)
From Funcionario
Where nome Like 'Ana%'

--Exercicio 11
Select Count(*)
From Funcionario
Where nome like '%Luis%'

--Exercicio 12
Select Min(salario), Max(salario)
From Funcionario
Where endereco like 'Av. São Paulo%'

/*Cápítulo 8*/
--Exercicio 1
Select cargo, Count(*) as quantidade
From Funcionario
Group by cargo
order by quantidade

--Exercicio 2
Select cargo, count(*)
From Funcionario
Where Not cargo is Null
Group by cargo

--Exercicio 3
Select cargo, AVG(salario) as Media_Salarios_Cargo
From Funcionario
Group by cargo

--Exercicio 4
Select cargo, SUM(salario)
From Funcionario
Group by cargo
Having Sum(salario) > 3000

--Exercicio 5
Select cargo, Sum(salario)
From Funcionario
Where estado='SP'
Group by cargo

--Exercicio 6
Update Funcionario SET
ativo=1
Where (cidade='Jundiaí') or (cidade='São Paulo')

--Exercicio 7
Update Funcionario Set
ativo=0
Where not ((cidade='Jundiaí') or (cidade='São Paulo'))

--Exercicio 8
Select ativo, count(*)
From Funcionario
Group by ativo

--Exercicio 9
Select cidade, SUM(salario)
From Funcionario
Group by cidade

--Exercicio 10
Select cidade, AVG(salario)
From Funcionario
Group by cidade
Having not avg(salario) is null

--Exercicio 11
Select cargo, sum(salario), avg(salario)
from Funcionario
Group by cargo
Having SUM(salario) < 5000

--Exercicio 12
Select cidade, cargo, sum(salario), avg(salario)
From Funcionario
Group by cidade, cargo

/*Cápítulo 10*/
--Exercicio 1

Select Top 4 nome
From Funcionario

--Exercicio 2
Select top 2 *
From Funcionario
Where cidade='Valinhos'

--Exercicio 3
Select top 1 nome, dataNascto
From Funcionario
Order by dataNascto ASC

--Exercicio 4
Select top 2 cidade, count(*)
From Funcionario
Group by cidade

--Exercicio 5
Select top 2 cargo, count(*)
From Funcionario
Group by cargo

--Exercicio 6
Select top 30 percent *
From Funcionario

--Exercicio 7
Select top 6 nome, email
From Funcionario

--Exercicio 8
Select Top 70 percent idFuncionario, cargo, ativo
From Funcionario

--Exercicio 9
Select top 1 idFuncionario, salario
From Funcionario
Where not salario is null
Order by salario ASC

--Exercicio 10
Select Top 1 nome, salario
From Funcionario
Order by salario desc

--Exercicio 11
Select top 1 nome, endereco
From Funcionario

--Exercicio 12
Select Top 90 Percent *
From Funcionario

--Exercicio 13
Select Top 1 *
From Funcionario
Where cidade='São Paulo'

--Exercicio 14
Select Top 20 percent nome, endereco, cidade, estado
From Funcionario

--Exercicio 15
Select Top 2 *
From Funcionario
Where Year(dataNascto) = 1988

/*Cápítulo 10*/
--Exercicio 1
Create Database Compras

--Exercicio 2
Use Compras

--Exercicio 3
Create Table Cliente(
	IdCliente int identity primary key,
	Nome varchar(50) not null,
	Endereco varchar(50) not null,
	Cidade varchar(50) not null,
	Estado char(2) not null
)

Create Table Produto(
	IdProduto INT IDENTITY Primary Key,
	Descricao varchar(50) not null,
	preco decimal(5,2) not null,
	Qtde int not null
)

Create Table Compram (
	IdCompra Int identity(1000,2),
	IdCliente int,
	IdProduto int,
	Data Datetime not null,
	Qtde Int,
	Valor Decimal(5,2),
	Primary Key(IdCompra, IdCliente, IdProduto)
)

--Exercicio 4
Alter table Cliente
Add sexo char(1) not null

--Exercicio 5
Insert Into Cliente
(Nome,Endereco,Cidade,Estado,Sexo)
Values
('José de Oliveira','Av. Jatobá,34','Jundiaí','SP','F')

Insert Into Cliente
(Nome, Endereco,Cidade,Estado,Sexo)
Values
('Maria da Silva','Av. Presidente,12','Itatiba','MG','F')

Insert Into Cliente
(Nome, Endereco,Cidade,Estado,Sexo)
Values
('Antonio Carlos','R. Florença,5','Jundiaí','SP','M')

Insert Into Cliente
(Nome, Endereco,Cidade,Estado,Sexo)
Values
('Luisa de Souza','Av. Jatobá,45','Jundiaí','MG','F')

Insert Into Cliente
(Nome, Endereco,Cidade,Estado,Sexo)
Values
('Carlos de Souza','Av. Jatobá,45','Jundiaí','SP','M')

--Exercicio 6
Insert into Produto
(Descricao,Preco,Qtde)
Values
('Lápis', 1.50,20)

Insert into Produto
(Descricao,Preco,Qtde)
Values
('Borracha', 1.00,15)

Insert into Produto
(Descricao,Preco,Qtde)
Values
('Caneta', 1.75,35)

Insert into Produto
(Descricao,Preco,Qtde)
Values
('Compasso', 5.20,10)

Insert into Produto
(Descricao,Preco,Qtde)
Values
('Régua', 0.75,16)

Insert into Produto
(Descricao,Preco,Qtde)
Values
('Papel Sulfite', 10.50,5)

--Exercicio 7
Insert Into Compram
(IdCliente,idProduto,Data,Qtde,Valor)
Values
(1,1,'2010-12-01',2,1.50)

Insert Into Compram
(IdCliente,idProduto,Data,Qtde,Valor)
Values
(2,1,'2010-12-03',5,1.50)

Insert Into Compram
(IdCliente,idProduto,Data,Qtde,Valor)
Values
(1,3,'2011-01-05',13,1.75)

Insert Into Compram
(IdCliente,idProduto,Data,Qtde,Valor)
Values
(1,4,'2011-01-11',1,5.20)

Insert Into Compram
(IdCliente,idProduto,Data,Qtde,Valor)
Values
(3,2,'2011-03-16',7,1.00)

Insert Into Compram
(IdCliente,idProduto,Data,Qtde,Valor)
Values
(4,5,'2011-05-21',10,0.75)

Insert Into Compram
(IdCliente,idProduto,Data,Qtde,Valor)
Values
(2,6,'2011-06-07',2,10.50)

Insert Into Compram
(IdCliente,idProduto,Data,Qtde,Valor)
Values
(5,3,'2011-06-07',2,1.75)

--Exercicio 8
Update Cliente
Set Estado = 'SP'

--Exercicio 9
Select Nome, Estado
From Cliente

--Exercicio 10
Update Cliente
Set Sexo = 'M'
Where Nome = 'José de Oliveira'

--Exercicio 11
Select Descricao, Preco
From Produto

--Exercicio 12
Delete From Produto
Where Descricao = 'Papel Sulfite'

--Exercicio 13
Update produto
Set Qtde = 15
Where Descricao = 'Lápis'

--Exercicio 14
Select Top 2 Lower(Descricao)
From Produto

--Exercicio 15
Select Sum(Valor)
From Compram
Where IdProduto = 1

--Exercicio 16
Select AVG(valor)
From Cliente
Where IdCliente = 1

--Exercicio 17
Select Nome
From Cliente
Where Cidade = 'Jundiaí'

--Exercicio 18
Select IdCliente, Upper(Nome)
From Cliente
Where Nome Like '%Carlos%'

--Exercicio 19
Select Descricao, Preco, Qtde
From Produto
Where Preco > 1 and Qtde >= 10

--Exercicio 20
Select *
From ClienteOrder by Nome

--Exercicio 21
Select Distinct cidade, count(*)
From Cliente
Group by Cidade
Order By count(*)

--Exercicio 22
Select Sum(preco) as SomaPreco, Avg(preco) as MediaPreco
From Produto

--Exercicio 23
Select Max(Preco) as PrecoMaisCaro, Min(Preco) as PrecoMaisBarato
From Produto

--Exercicio 24
Select Sum(Valor)
From Compram
Where Year(Data) = '2010'

--Exercicio 25
Select Top 1 Valor
From Compram
Where Year(Data) = '2011'
Order by Data

--Exercicio 26
Select Nome
From Cliente
Where Sexo = 'F'

--Exercicio 27
Select *
From Compram
Where Day(Data) in ('1', '11')

--Exercicio 28
Select Descricao, Preco, (Preco + (Preco*0.1)) as
PrecoAcrescido10porCento
From Produto

--Exercicio 29
Select IdCliente, Count(*) as QuantidadeCompra
From Compram
Group by IdCliente

--Exercicio 30
Update Produto
Set Preco = (Preco - (Preco*0.1))
Where Qtde < 15

--Exercicio 31
Select IdProduto, Day(Data)
From Compram

--Exercicio 32
Select Distinct Sexo, Count(*)
From Cliente
Group by Sexo

--Exercicio 33
Delete From Compram
Where IdCompra = 1000

--Exercicio 34
Select Descricao, Power(Qtde,2) as QtdeAoQuadrado
From Produto
Where Qtde > 15 and Qtde < 25

--Exercicio 35
Select SQRT(Qtde) as RaizDaQuantidade
From Produto
Where Descricao Like 'C%'

--Exercicio 36
Select Nome
From Cliente
Where Endereco Like 'Av. Jatobá%'

--Exercicio 37
Select Nome, Len(Nome) as QuantidadeDeCaractere
From Cliente

--Exercicio 38
Select IdCompra, Valor, (Valor-(Valor*0.2)) as
Valor20PorCentoDesconto
From Compram
Where IdCliente = 2

--Exercicio 39
Select Year(Data), Count(*)
From Compram
Group By Year(Data)

--Exercicio 40
Select IdCompra, Day(Data) as DiaDaCompra, Datename(Month, data)
as MesDaCompra, Year(Data) as AnoDasCompras
From Compram

--Exercicio 41
Select IdProduto, Sum(Valor*Qtde)
From Compram
Group by IdProduto
Having Sum(Valor*Qtde) > 7

--Exercicio 42
Delete From Compram
Where IdCliente Between 3 and 5

--Exercicio 43
Drop Table Produto

--Exercicio 44
Use Master
Drop Database Compras
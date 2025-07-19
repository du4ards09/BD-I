
DROP DATABASE bdLojaRoupas2
CREATE DATABASE bdLojaRoupas2
USE bdLojaRoupas2

CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (30) NOT NULL
	,idadeCliente VARCHAR(2) NOT NULL
)
CREATE TABLE tbVendedor(
	codVendedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeVendedor VARCHAR(30) NOT NULL
)
CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY (1,1)
	,dataVenda SMALLDATETIME
	,totalVenda SMALLMONEY NOT NULL
	,codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
	,codVendedor INT FOREIGN KEY REFERENCES tbVendedor(codVendedor)
)
CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY(1,1)
	,nomeFabricante VARCHAR(60)
)
CREATE TABLE tbFuncionario(
	codFuncionario INT PRIMARY KEY IDENTITY(1,1)
	,nomeFuncionario VARCHAR(30) NOT NULL
	,idadeFuncionario VARCHAR(2) 
	,dataAdmissao DATETIME NOT NULL
	,salarioFuncionario SMALLMONEY NOT NULL
)
CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY (1,1)
	,nomeProduto VARCHAR (60) NOT NULL
	,preçoProduto SMALLMONEY NOT NULL
	,dataEntradaProduto VARCHAR (15) NOT NULL
	,estoqueProduto INT NOT NULL
	,codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
)
CREATE TABLE tbItensVenda(
	codItensVenda INT PRIMARY KEY IDENTITY(1,1)
	,quantidadeItens INT NOT NULL
	,subTotalItens SMALLMONEY NOT NULL
	,codVenda INT FOREIGN KEY REFERENCES tbVenda(codVenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto(codProduto)
)



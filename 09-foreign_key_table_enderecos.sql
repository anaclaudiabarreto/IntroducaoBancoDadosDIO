-- Criação da tabela 'Enderecos', vinculada a tabela 'Clientes', para estudo do conceito de Foreign Key

CREATE TABLE Enderecos (
	Id int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	IdCliente int NULL,
	Rua varchar(255) NULL,
	Bairro varchar(255) NULL,
	Cidade varchar(255) NULL,
	Estado char(2) NULL,

	CONSTRAINT FK_Enderecos_Clientes FOREIGN KEY(IdCliente) -- criação da restrição do tipo chave estrangeira, relacionando o campo IdCliente da tabela atual
	REFERENCES Clientes (Id) -- com o campo Id da tabela 'Cliente'
)

-- Inserindo um endereço para o cliente de Id = 50
INSERT INTO Enderecos
VALUES (50, 'Rua Teste', 'Bairro Testando', 'Cidadela', 'MG')

-- Verificando se o endereço foi corretamente incluído
SELECT * FROM Enderecos WHERE IdCliente = 50 -- retorna o registro da tabela 'Enderecos'
SELECT * FROM Clientes WHERE Id = 50 -- retorna o registro da tabela 'Clientes'

-- Criação da tabela de clientes:
CREATE TABLE [dbo].[Clientes]( -- Define o nome da tabela
	-- Define nome, tipo, capacidade, nulabilidade dos campos:
	[Id]				[int] PRIMARY KEY IDENTITY(1,1)		NOT NULL,
	/*
	O campo 'Id' é de preenchimento obrigatório, devido à informação 'NOT NULL'
	O 'IDENTITY' é responsável por criar um campo auto-incrementado
	A chave primária (PRIMARY KEY) identifica o registro na tabela e não pode se repetir
	*/
	[Nome]				[varchar](255)						NULL, -- Esse e os demais campos abaixo são de preenchimento opcional, devido ao 'NULL'
	[Sobrenome]			[varchar](255)						NULL,
	[Email]				[varchar](255)						NULL,
	[AceitaComunicados]	[bit]								NULL,
	[DataCadastro]		[datetime2](7)						NULL
) ON [PRIMARY] -- Cria a chave primária da tabela
GO

-- Criação da tabela de produtos:
DROP TABLE IF EXISTS dbo.Produtos -- Antes de criar a tabela, verifica se já existe uma com esse nome e exclui
CREATE TABLE Produtos (
	Id			int IDENTITY(1,1)	PRIMARY KEY		NOT NULL, -- 'PRIMARY KEY' cria a chave primária e garante que o dado não irá se repetir
	Nome		varchar(255)						NOT NULL,
	Cor			varchar(50)							NULL,
	Preco		decimal(13, 2)						NOT NULL,
	Tamanho		varchar(5)							NULL,
	Genero		char(1)								NULL
)

-- Comandos para conferir se as tabelas foram devidamente criadas:
SELECT * FROM Clientes
SELECT * FROM Produtos
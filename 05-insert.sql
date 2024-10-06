/*
	ANOTAÇÕES DO CURSO 'SQL, TABELAS E TIPOS DE DADOS'
	DIGITAL INNOVATION ONE
	PROFESSOR LEONARDO BUTA
*/

-- A CLÁUSULA 'INSERT' - para inserir registros em uma tabela existente

-- Especificando as colunas:
INSERT INTO Clientes (Sobrenome, Email, AceitaComunicados, DataCadastro, Nome) -- Insere novos valores na tabela
VALUES('Barreto', 'anab@gmail.com', 0, GETDATE(), 'Athena') -- Quando as colunas são declaradas, os valores devem ser incluídos na mesma ordem que as colunas foram

-- Sem especificar as colunas:
INSERT INTO Clientes
VALUES('Luiz', 'Barreto', 'emailLG@gmail.com', 0, GETDATE()) -- Quando não declara as colunas, deve obedecer a ordem que as colunas ocupam na tabela
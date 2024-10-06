-- A CL�USULA 'UPDATE' - para editar registros existentes
SELECT * FROM Clientes WHERE Id = 50 -- Seleciona o registro para conferir como est�o os dados

-- Alterar um dado de um cliente espec�fico
UPDATE Clientes -- Comando para editar registro(s) da tabela
SET Email = 'email_atualizado@email.com' -- Informando novo endere�o de e-mail	
WHERE Id = 50 -- Especificando qual registro dever� ser editado. Importante utilizar o 'Id', que � chave da tabela

-- Alterar mais de um dado de um cliente espec�fico
UPDATE Clientes
SET Email = 'email_atualizado_novamente@email.com', -- Informando novo endere�o de e-mail
	AceitaComunicados = 0 -- Alterando tamb�m o valor de outra coluna
WHERE Id = 50 -- Especificando qual registro dever� ser editado. Importante utilizar o 'Id', que � chave da tabela

/*
	CUIDADO!!!
	UPDATE SEM A CL�USULA WHERE ALTERA TODOS OS REGISTROS DA TABELA!!!
	MELHOR NUNCA FAZER!!!
	(EXCETO RAR�SSIMAS EXCE��ES)
*/
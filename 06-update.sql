-- A CLÁUSULA 'UPDATE' - para editar registros existentes
SELECT * FROM Clientes WHERE Id = 50 -- Seleciona o registro para conferir como estão os dados

-- Alterar um dado de um cliente específico
UPDATE Clientes -- Comando para editar registro(s) da tabela
SET Email = 'email_atualizado@email.com' -- Informando novo endereço de e-mail	
WHERE Id = 50 -- Especificando qual registro deverá ser editado. Importante utilizar o 'Id', que é chave da tabela

-- Alterar mais de um dado de um cliente específico
UPDATE Clientes
SET Email = 'email_atualizado_novamente@email.com', -- Informando novo endereço de e-mail
	AceitaComunicados = 0 -- Alterando também o valor de outra coluna
WHERE Id = 50 -- Especificando qual registro deverá ser editado. Importante utilizar o 'Id', que é chave da tabela

/*
	CUIDADO!!!
	UPDATE SEM A CLÁUSULA WHERE ALTERA TODOS OS REGISTROS DA TABELA!!!
	MELHOR NUNCA FAZER!!!
	(EXCETO RARÍSSIMAS EXCEÇÕES)
*/
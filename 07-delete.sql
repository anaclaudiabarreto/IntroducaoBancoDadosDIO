-- A CLÁUSULA 'DELETE' - para apagar registros existentes

SELECT * FROM Clientes
WHERE Id = 500 -- Verificando a existência do registro antes da exclusão

DELETE Clientes -- Deletar da tabela 
WHERE Id = 500 -- Apenas o registro com o Id informado

SELECT * FROM Clientes
WHERE Id = 500 -- Verificando a existência do registro após a exclusão

/*
	CUIDADO!!!
	DELETE SEM A CLÁUSULA WHERE APAGA TODOS OS REGISTROS DA TABELA!!!
	MELHOR NUNCA FAZER!!!
	(EXCETO RARÍSSIMAS EXCEÇÕES)
*/
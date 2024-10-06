-- A CL�USULA 'DELETE' - para apagar registros existentes

SELECT * FROM Clientes
WHERE Id = 500 -- Verificando a exist�ncia do registro antes da exclus�o

DELETE Clientes -- Deletar da tabela 
WHERE Id = 500 -- Apenas o registro com o Id informado

SELECT * FROM Clientes
WHERE Id = 500 -- Verificando a exist�ncia do registro ap�s a exclus�o

/*
	CUIDADO!!!
	DELETE SEM A CL�USULA WHERE APAGA TODOS OS REGISTROS DA TABELA!!!
	MELHOR NUNCA FAZER!!!
	(EXCETO RAR�SSIMAS EXCE��ES)
*/
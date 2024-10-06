-- JOIN - Trazendo a informa��o completa, ou seja, os dados do cliente + endere�o:
SELECT
	*
FROM
	Clientes
INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente -- INNER JOIN junta duas tabelas. no 'ON' definimos a condi��o para as tabelas se juntarem
WHERE Clientes.Id = 50
-- o exemplo acima trouxe todas as colunas das duas tabelas, o que pode n�o ser interessante.

-- Tratando as colunas que dever�o ser exibidas no resultado do INNER JOIN:
SELECT
	C.Nome,
	C.Sobrenome,
	C.Email,
	E.Rua,
	E.Bairro,
	E.Cidade,
	E.Estado
FROM
	Clientes C
INNER JOIN Enderecos E ON C.Id = E.IdCliente
WHERE C.Id = 50
-- JOIN - Trazendo a informação completa, ou seja, os dados do cliente + endereço:
SELECT
	*
FROM
	Clientes
INNER JOIN Enderecos ON Clientes.Id = Enderecos.IdCliente -- INNER JOIN junta duas tabelas. no 'ON' definimos a condição para as tabelas se juntarem
WHERE Clientes.Id = 50
-- o exemplo acima trouxe todas as colunas das duas tabelas, o que pode não ser interessante.

-- Tratando as colunas que deverão ser exibidas no resultado do INNER JOIN:
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
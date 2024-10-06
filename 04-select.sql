-- O COMANDO 'SELECT' - para selecinoar os registros de uma tabela
SELECT * FROM Clientes -- Seleciona todas as colunas de todos os registros da tabela Clientes

-- ORDENANDO OS RESULTADOS
SELECT * FROM Clientes
ORDER BY Nome ASC -- Coloca em ordem alfabética pela coluna Nome. O 'ASC' é desnecessário

SELECT * FROM Clientes
ORDER BY Sobrenome DESC -- Coloca em ordem alfabética inversa pela coluna Sobrenome

SELECT * FROM Clientes
ORDER BY Nome, Sobrenome -- Coloca em ordem alfabética pela coluna Nome e, em seguida, Sobrenome

-- SELECIONANDO COLUNAS ESPECÍFICAS
SELECT Nome, Sobrenome, Email FROM Clientes -- Seleciona apenas as colunas que eu preciso

-- UTILIZANDO O 'WHERE' - filtrar os dados
SELECT * FROM Clientes
WHERE Nome = 'Andrew' -- Retorna apenas os clientes com esse nome
ORDER BY Nome, Sobrenome

SELECT * FROM Clientes
WHERE Nome = 'Andrew' AND Sobrenome = 'Dixon' -- Retorna apenas os clientes com esse nome E sobrenome
ORDER BY Nome, Sobrenome

SELECT * FROM Clientes
WHERE Nome = 'Andrew' OR Sobrenome = 'Hill' -- Retorna apenas os clientes que se chamam 'Andrew' OU possuem o sobrenome 'Hill'
ORDER BY Nome, Sobrenome

SELECT * FROM Clientes
WHERE AceitaComunicados = 1 -- Retorna apenas os clientes que aceitam receber comunicados
ORDER BY Nome, Sobrenome

-- UTILIZANDO O LIKE
SELECT * FROM Clientes
WHERE Nome LIKE '%G%' -- Retorna apenas os clientes que possuem a letra G no nome (em qualquer posição)
ORDER BY Nome, Sobrenome

SELECT * FROM Clientes
WHERE Nome LIKE 'G%' -- Retorna apenas os clientes que o nome inicia com a letra G
ORDER BY Nome, Sobrenome

SELECT * FROM Clientes
WHERE Nome LIKE '%O' -- Retorna apenas os clientes que o nome termina com a letra O
ORDER BY Nome, Sobrenome
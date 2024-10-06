-- MANIPULA��O DE DADOS NUM�RICOS
-- O COMANDO 'COUNT' - para contar quantas linhas existem na tabela em uma determinada condi��o, de maneira perform�tica e r�pida
SELECT COUNT(*) FROM Produtos -- est� contando todas as linhas (registros) da tabela

SELECT COUNT(*) QuantidadeProdutos FROM Produtos -- nomeando a coluna que exibir� o resultado, para deixar ainda mais claro

SELECT COUNT(*) QuantidadeProdutosTamanhoM FROM Produtos WHERE Tamanho = 'M' -- conta todos os produtos de tamanho M registrados

-- O COMANDO 'SUM' - somar valores num�ricos
SELECT SUM(Preco) SomaTotalPreco FROM Produtos -- soma os pre�os de todos os produtos registrados

SELECT SUM(Preco) SomaTotalPrecoGeneroU FROM Produtos WHERE Genero = 'U' -- soma os pre�os dos produtos unissex registrados

-- OS COMANDOS MIN E MAX - utilizados para descobrir o valor m�ximo ou m�nimo de algum n�
SELECT MAX(Preco) ValorProdutoMaisCaro FROM Produtos -- seleciona o produto mais caro registrado
SELECT MIN(Preco) ValorProdutoMaisBarato FROM Produtos WHERE Genero = 'M' -- seleciona o produto mais barato (do g�nero masculino) registrado

-- O COMANDO AVG - utilizado para calcular a m�dia entre n�meros
SELECT AVG(Preco) MediaPrecosProdutos FROM Produtos -- calcula a m�dia de pre�o dos produtos registrados

-- MANIPULA��O DE DADOS TEXTUAIS
SELECT Nome, Cor FROM Produtos -- aqui o retorno ser� composto por duas colunas, uma com cada informa��o

-- Concatenando textos no resultado da consulta
SELECT Nome + ' | ' + Cor FROM Produtos -- aqui o retorno ser� composto por apenas uma coluna, com as informa��es concatenadas

-- Concatenando textos no resultado da consulta e nomeando a coluna do resultado
SELECT
Nome + ' | ' + Cor NomeECorProduto
FROM Produtos -- aqui o retorno ser� composto por apenas uma coluna, com as informa��es concatenadas

-- Transformando textos em mai�sculo/min�sculo
SELECT
UPPER(Cor) CorMaiuscula
FROM Produtos -- aqui o retorno ser� apenas de uma coluna (Cor), e todas as informa��es estar�o em mai�sculo

SELECT
LOWER(Genero) GeneroMinusculo
FROM Produtos -- aqui o retorno ser� apenas de uma coluna (Genero), e todas as informa��es estar�o em min�sculo

-- MANIPULA��O DE DATAS
SELECT
Nome + ' ' + Sobrenome NomeCompleto,
FORMAT(DataCadastro, 'dd/MM/yyyy') -- aqui passamos o campo a ser formatado e uma string com o formato desejado
FROM Clientes

select * from Clientes

-- AGRUPAMENTO DE DADOS
SELECT
	Tamanho,
	Count(*) Quantidade -- o retorno ser� composto por uma tabela de duas colunas (Tamanho e Quantidade),
FROM Produtos
WHERE Tamanho <> '' -- o retorno n�o exibir� os registros que n�o t�m informa��o de tamanho
GROUP BY Tamanho
ORDER BY Quantidade DESC -- ordenar� pela coluna quantidade, da maior para a menor
-- MANIPULAÇÃO DE DADOS NUMÉRICOS
-- O COMANDO 'COUNT' - para contar quantas linhas existem na tabela em uma determinada condição, de maneira performática e rápida
SELECT COUNT(*) FROM Produtos -- está contando todas as linhas (registros) da tabela

SELECT COUNT(*) QuantidadeProdutos FROM Produtos -- nomeando a coluna que exibirá o resultado, para deixar ainda mais claro

SELECT COUNT(*) QuantidadeProdutosTamanhoM FROM Produtos WHERE Tamanho = 'M' -- conta todos os produtos de tamanho M registrados

-- O COMANDO 'SUM' - somar valores numéricos
SELECT SUM(Preco) SomaTotalPreco FROM Produtos -- soma os preços de todos os produtos registrados

SELECT SUM(Preco) SomaTotalPrecoGeneroU FROM Produtos WHERE Genero = 'U' -- soma os preços dos produtos unissex registrados

-- OS COMANDOS MIN E MAX - utilizados para descobrir o valor máximo ou mínimo de algum nº
SELECT MAX(Preco) ValorProdutoMaisCaro FROM Produtos -- seleciona o produto mais caro registrado
SELECT MIN(Preco) ValorProdutoMaisBarato FROM Produtos WHERE Genero = 'M' -- seleciona o produto mais barato (do gênero masculino) registrado

-- O COMANDO AVG - utilizado para calcular a média entre números
SELECT AVG(Preco) MediaPrecosProdutos FROM Produtos -- calcula a média de preço dos produtos registrados

-- MANIPULAÇÃO DE DADOS TEXTUAIS
SELECT Nome, Cor FROM Produtos -- aqui o retorno será composto por duas colunas, uma com cada informação

-- Concatenando textos no resultado da consulta
SELECT Nome + ' | ' + Cor FROM Produtos -- aqui o retorno será composto por apenas uma coluna, com as informações concatenadas

-- Concatenando textos no resultado da consulta e nomeando a coluna do resultado
SELECT
Nome + ' | ' + Cor NomeECorProduto
FROM Produtos -- aqui o retorno será composto por apenas uma coluna, com as informações concatenadas

-- Transformando textos em maiúsculo/minúsculo
SELECT
UPPER(Cor) CorMaiuscula
FROM Produtos -- aqui o retorno será apenas de uma coluna (Cor), e todas as informações estarão em maiúsculo

SELECT
LOWER(Genero) GeneroMinusculo
FROM Produtos -- aqui o retorno será apenas de uma coluna (Genero), e todas as informações estarão em minúsculo

-- MANIPULAÇÃO DE DATAS
SELECT
Nome + ' ' + Sobrenome NomeCompleto,
FORMAT(DataCadastro, 'dd/MM/yyyy') -- aqui passamos o campo a ser formatado e uma string com o formato desejado
FROM Clientes

select * from Clientes

-- AGRUPAMENTO DE DADOS
SELECT
	Tamanho,
	Count(*) Quantidade -- o retorno será composto por uma tabela de duas colunas (Tamanho e Quantidade),
FROM Produtos
WHERE Tamanho <> '' -- o retorno não exibirá os registros que não têm informação de tamanho
GROUP BY Tamanho
ORDER BY Quantidade DESC -- ordenará pela coluna quantidade, da maior para a menor
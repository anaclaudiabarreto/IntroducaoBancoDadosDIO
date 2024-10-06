# Revisão Banco de Dados Relacional

💻 Repositório criado para fins de estudo e revisão, registrando o conhecimento adquirido na parte teórica dos módulos [Introdução a Banco de Dados](https://web.dio.me/course/introducao-banco-de-dados/learning/be90be08-cf35-45d0-a4d4-79b07fc25eb1?back=/track/coding-future-back-end-dot-net&tab=undefined&moduleId=undefined), [SQL SERVER - Dominando Tabelas e Tipos de Dados](https://web.dio.me/course/sql-tabelas-e-tipos-de-dados/learning/8b606c06-24c9-4e9e-81ff-d892da424f56?back=/track/coding-future-back-end-dot-net&tab=undefined&moduleId=undefined) e [SQL SERVER - Manipulando Dados](https://web.dio.me/course/manipulando-dados/learning/b7dd681f-763f-4bbe-b11a-e34e456a6271?back=/track/coding-future-back-end-dot-net&tab=undefined&moduleId=undefined), ministrados pelo expert Leonardo Buta, no *Bootcamp* [Randstad - Backend com .NET](https://web.dio.me/track/coding-future-back-end-dot-net) da [DIO](https://www.dio.me/).

Este estudo foi feito utilizando o Banco de Dados Relacional SQL Server, mas a linguagem pode ser utilizada em demais bancos do mesmo tipo.

📚 Rever o conteúdo introdutório de banco de dados após alguns anos de experiência profissional na área é muito enriquecedor, pois sempre há espaço para o aprendizado e para rever algumas práticas. Além disso, a organização do conteúdo está impecável e a didática do professor [Leonardo Buta](https://www.linkedin.com/in/leonardo-buta/) é muito boa!

🔎 Organizei os arquivos na ordem em que o assunto foi explicado no curso, conforme abaixo:
|Assunto|Resumo|Arquivo(s)|
|---|---|---|
|Criação das tabelas | Neste momento rodamos o script de criação das tabelas para iniciar o aprendizado. Posteriormente, o professor explica passo-a-passo da criação. No arquivo há a explicação do conceito de Chave Primária (Primary Key). | 01-create_table|
|Inserção de dados nas tabelas de clientes e produtos | Neste momento incluímos alguns registros nas tabelas que foram criadas, para prosseguir com o treinamento. Após, será explicado detalhadamente o que foi feito no script. | 02-inserindo_clientes 03-inserindo_produtos|
|O comando SELECT | Um resumo do funcionamento do comando SELECT, da ordenação dos resultados, da seleção de colunas específicas, do uso do WHERE e do LIKE.  |04-select|
|Realizando um INSERT | Aqui fica melhor explicado o funcionamento dos inserts que foram feitos nas tabelas. Temos exemplos de insert especificando as colunas ou não.|05-insert|
|Realizando um UPDATE | Resumo de como fazer a edição de um registro existente na tabela, como por exemplo alterar o e-mail de um usuário previamente cadastrado no sistema. Também contém um alerta sobre o perigo de se fazer um update sem a cláusula WHERE. |06-update|
|Deletando um registro | Resumo de como fazer a exclusão de um registro existente na tabela. Também contém um alerta sobre o perigo de se fazer um delete sem a cláusula WHERE.|07-delete|
|Manipulando dados | Resumo de algumas formas de manipular os dados dos resultados das consultas, como por exemplo o uso do COUNT, SUM, MAX, MIN e AVG para manipulação de dados numéricos; o uso do UPPER, LOWER e a concatenação de strings para dados textuais; o uso do FORMAT para formatação de datas; e o agrupamento de dados. |08-manipulando_dados|
|Foreign Key | Criação de uma tabela de endereços, que se relaciona com a tabela de clientes, para exemplificar o conceito de foreign key.|09-foreign_key_table_enderecos|
|Realizando um JOIN | Resumo de como funciona o INNER JOIN na prática, utilizando o exemplo do relacionamento entre as tabelas Clientes e Endereços. |10-innerjoin|

Espero que estes registros sejam úteis para outros estudantes ou, como eu gosto de dizer: "desenvolvedores em desenvolvimento". Bons estudos! 🤓📘
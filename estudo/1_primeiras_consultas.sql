


--1. Selecionando Dados (SELECT e FROM)


--1a. selecionando todas as colunas da tabela clientes
SELECT * FROM clientes;
--1b. selecionar apenas as colunas IdClliente e QtdePontos
SELECT IdCliente, QtdePontos FROM clientes;
--1c. selecionar apenas IdCliente e DtCriacao
SELECT IdCliente, DtCriacao FROM clientes;

--2. Filtrando Dados (WHERE)

--2a. Crie uma consulta para selecionar todos os clientes que têm mais de 100 pontos.
SELECT * FROM clientes WHERE QtdePontos > 100;
--2b. Crie uma consulta para selecionar os clientes que têm exatamente 50 pontos.
SELECT * FROM clientes WHERE QtdePontos = 50;
--2c. Escreva uma consulta que exiba os clientes que têm a flag de e-mail ativada (FlEmail = 1).
SELECT * FROM clientes WHERE FlEmail = 1;
--2d. Escreva uma consulta que exiba os clientes que têm a flag de Twitch ativada (FlTwitch = 1).
SELECT * FROM clientes WHERE FlTwitch = 1;


--3. Lógica Condicional (CASE WHEN)

--3a. Crie uma consulta que adicione uma coluna chamada StatusPontos. Se a QtdePontos for maior que 100, o status será "Acima de 100", caso contrário, será "Até 100".
SELECT
    IdCliente,
    QtdePontos,
    CASE
        WHEN QtdePontos > 100 THEN 'Acima de 100'
        ELSE 'Ate 100'
    END AS StatusPontos
FROM
    clientes;

--3b. Crie uma consulta que adicione uma coluna chamada UsoYouTube. Se a flag FlYouTube for 1, 
--o valor será "Usa YouTube", caso contrário, será "Não usa YouTube".3b. Crie uma consulta que 
--adicione uma coluna chamada UsoYouTube. Se a flag FlYouTube for 1, o valor será "Usa YouTube", 
--caso contrário, será "Não usa YouTube".
SELECT
  IdCliente,
  FlYouTube,
  CASE
    WHEN FlYouTube = 1 THEN 'Usa YouTube'
    ELSE 'Não usa YouTube'
  END AS UsoYouTube
FROM
  clientes;

--3c. Crie uma consulta que adicione uma coluna chamada NivelCliente. Se QtdePontos for maior que 1000, 
--o nível será "Super", se for entre 500 e 1000, será "Avançado", e se for menor que 500, será "Básico".
SELECT
    IdCliente,
    QtdePontos,
    CASE
        WHEN QtdePontos > 1000 THEN 'Super'
        WHEN QtdePontos BETWEEN 500 AND 1000 THEN 'Avancado'
        ELSE 'Basico'
    END AS NivelCliente
FROM 
    clientes;
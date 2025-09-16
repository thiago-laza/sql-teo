


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

    -- EXERCICIOS

-- 1. Exercícios com SELECT e FROM

--1. Selecione todas as colunas da tabela clientes.

SELECT * FROM clientes;

-- 2. Exiba apenas o IdCliente e a DtCriacao de todos os registros.

SELECT IdCliente, DtCriacao  FROM clientes;

-- 3. Selecione a quantidade de pontos (QtdePontos) e a data de atualização (DtAtualizacao) dos clientes.

SELECT QtdePontos, DtAtualizacao FROM clientes;

-- 4. Exiba o IdCliente e as flags FlEmail e FlTwitch.

SELECT IdCliente, FlEmail, FlTwitch FROM clientes;

-- 5. Selecione apenas as colunas FlYouTube e FlInstagram.

SELECT FlYouTube, FlInstagram FROM clientes;

-- 6. Liste todos os valores únicos na coluna FlEmail.

SELECT DISTINCT FlEmail FROM clientes;

-- 7. Selecione todos os dados dos clientes, mas mostre a coluna QtdePontos como a primeira coluna.

SELECT
  QtdePontos,
  IdCliente,
  FlEmail,
  FlTwitch,
  FlYouTube,
  FlBlueSky,
  FlInstagram,
  DtCriacao,
  DtAtualizacao
FROM 
  clientes;

-- 8. Exiba apenas a coluna QtdePontos de todos os clientes.

SELECT QtdePontos FROM clientes;

-- 9. Liste todos os valores únicos na coluna FlTwitch.

SELECT DISTINCT FlTwitch FROM clientes;

-- 10. Selecione as colunas IdCliente, DtCriacao, e QtdePontos.

SELECT IdCliente, DtCriacao, QtdePontos FROM clientes;


-- 2. Exercícios com WHERE

-- 1. Selecione todos os clientes com mais de 500 pontos.

SELECT * FROM clientes WHERE QtdePontos > 500;

-- 2. Exiba os clientes que têm exatamente 100 pontos.

SELECT * FROM clientes WHERE QtdePontos = 100;

-- 3. Liste os clientes que têm 0 pontos e FlTwitch ativada (= 1).

SELECT * FROM clientes WHERE QtdePontos = 0 AND FlTwitch = 1;

-- 4. Selecione todos os clientes que foram criados após a data '2025-01-01 00:00:00 +0000 UTC'.

SELECT * FROM clientes WHERE DtCriacao > '2025-01-01 00:00:00 +0000 UTC'

-- 5. Exiba os clientes com pontuação entre 50 e 100, incluindo 50 e 100.

SELECT * FROM clientes WHERE QtdePontos BETWEEN 50 AND 100;

-- 6. Selecione os clientes que têm a flag FlInstagram ativada (= 1).

SELECT * FROM clientes WHERE FlInstagram = 1;

-- 7. Selecione os clientes que têm a flag FlEmail ativada (= 1) OU a flag FlTwitch ativada (= 1).

SELECT * FROM clientes WHERE FlEmail = 1 OR FlTwitch =1;

-- 8. Liste os clientes com mais de 50 pontos E FlYouTube ativada (= 1).

SELECT * FROM clientes WHERE QtdePontos > 50 AND FlYouTube = 1;

-- 9. Exiba os clientes que têm a QtdePontos igual a 0.

SELECT * FROM clientes WHERE QtdePontos = 0;

-- 10. Selecione os clientes que não têm a flag FlBlueSky ativada.

SELECT * FROM clientes WHERE FlBlueSky = 0;

-- 3. Exercícios com CASE WHEN

-- 1. Crie uma coluna chamada StatusAtividade na qual, se DtAtualizacao for igual a 
--DtCriacao, o valor seja "Não Atualizado", caso contrário seja "Atualizado".


SELECT 
  DtCriacao,
  DtAtualizacao,
  CASE
    WHEN DtCriacao = DtAtualizacao THEN 'nao atualizado'
    ELSE 'atualizado'
  END AS StatusAtividade
FROM
  clientes;


-- 2. Adicione uma coluna chamada PlataformaAtiva na qual, se FlTwitch for 1, 
-- o valor seja "Twitch", caso contrário seja "Outra".

SELECT
  FlTwitch,
  CASE
    WHEN FlTwitch = 1 THEN 'twitch'
    ELSE 'outra'
  END AS PlataformaAtiva
from 
  clientes;

-- 3. Crie uma coluna CategoriaPontos na qual, se QtdePontos for maior ou igual a 100, 
--o valor seja "Premium", caso contrário "Básico".

SELECT
  QtdePontos,
  CASE
    WHEN QtdePontos >= 100 THEN 'Premium'
    ELSE 'Basico'
  END AS CategoriaPontos
FROM
  clientes;

-- 4. Adicione uma coluna chamada StatusTwitch na qual, se FlTwitch for 1, 
--o valor seja "Ativo", caso contrário, "Inativo".

SELECT
  FlTwitch,
  CASE
    WHEN FlTwitch = 1 THEN 'ativo'
    ELSE 'inativo'
  END AS StatusTwitch
FROM
  clientes;

-- 5. Crie uma coluna UsaMidiasSociais na qual, se FlInstagram ou 
--FlYouTube ou FlTwitch for 1, o valor seja "Sim", caso contrário "Não".

SELECT
  FlInstagram,
  FlYouTube,
  FlTwitch,
  CASE
    WHEN FlInstagram = 1 THEN 'sim'
    WHEN FlYouTube = 1 THEN 'sim'
    WHEN FlTwitch = 1  THEN 'sim'
    ELSE 'nao'
  END AS UsaMididasSociais
FROM
  clientes;

-- 6. Adicione uma coluna chamada TipoCliente. Se QtdePontos for maior que 1000, 
--o valor será "Nível A", se for maior que 500, será "Nível B", e senão, "Nível C".

SELECT
  QtdePontos,
  CASE
    WHEN QtdePontos > 1000 THEN 'nivel A'
    WHEN QtdePontos > 500 THEN 'nivel B'
    ELSE 'nivel C'
  END AS TipoCliente
FROM
  clientes;

-- 7. Crie uma coluna UsaRede na qual, se FlEmail for 1, o valor seja "Email", 
--se FlTwitch for 1, seja "Twitch", e se FlYouTube for 1, seja "YouTube". Se nenhuma for 1, o valor será "Nenhuma".

SELECT
  FlEmail,
  FlTwitch,
  FlYouTube,
  CASE
    WHEN FlEmail = 1 THEN 'email'
    WHEN FlTwitch = 1 THEN 'twitch'
    WHEN FlYouTube = 1 THEN 'youtube'
    ELSE 'nenhuma'
  END AS UsaRede
FROM
  clientes;

-- 8. Adicione uma coluna ContaAntiga na qual, se a DtCriacao for anterior a 
--'2025-01-01 00:00:00 +0000 UTC', o valor será "Sim", caso contrário "Não".

SELECT
  DtCriacao,
  CASE
    WHEN DtCriacao < '2025-01-01 00:00:00 +0000 UTC' THEN 'sim'
    ELSE 'nao'
  END AS ContaAntiga
FROM
  clientes;

-- 9. Crie uma coluna Prioridade na qual, se FlEmail for 1 
-- e QtdePontos for maior que 50, o valor seja "Alta Prioridade", caso contrário "Normal".

SELECT
  FlEmail,
  QtdePontos,
  CASE
    WHEN FlEmail = 1 AND QtdePontos > 50 THEN 'alta prioridade'
    ELSE 'normal'
  END AS Prioridade
FROM
  clientes;

-- 10. Crie uma coluna TipoUsuario na qual, se QtdePontos for 0, 
-- o valor seja "Iniciante", e se for maior que 0, "Participante".

SELECT
  QtdePontos,
  CASE
    WHEN QtdePontos = 0 THEN 'iniciante'
    ELSE 'participante'
  END AS TipoUsuario
FROM
  clientes;
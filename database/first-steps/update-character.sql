SELECT * FROM personagem;

-- SET SQL_SAFE_UPDATE = 0; id

-- Usado no Workbench.

-- Muito cuidado com esse comando. Ele altera o safe update mode.

UPDATE personagem SET nome = 'Luke Skywalker' WHERE id = 1;

UPDATE personagem SET id = 100 WHERE id = 99 LIMIT 1;

-- Como no nosso exemplo existe mais de um id 5 limitamos a alteração ao primeiro id que ele encontrar.

UPDATE personagem SET nome = 'Leia Organa' WHERE id = 5 LIMIT 1;

UPDATE personagem
SET
    nome = 'Lider Supremo Snoke',
    destaque = 1,
    altura = 2.3
WHERE id = 100;

-- examplo de alteração com mais de uma coluna.
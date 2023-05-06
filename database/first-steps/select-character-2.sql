SELECT * FROM personagem;

SELECT nome, id FROM personagem;

SELECT nome, id FROM personagem WHERE id = 5;

SELECT
    id AS codigo,
    nome,
    altura
FROM personagem
WHERE nome = 'Chewbacca';

-- AS serve para nomear a coluna desejada.

SELECT nome, altura FROM personagem WHERE BINARY nome = 'chewbacca';

-- Usa-se o BINARY para saber se o resultado é exatamente o que está no DB.

-- Considera letras maiúsculas e minúsculas.

SELECT altura * 2 AS dobro FROM personagem;

-- Selects com WHERE...

SELECT * FROM personagem WHERE 0;

-- Sempre retorna falso para todas as linhas do DB.

SELECT * FROM personagem WHERE 1;

-- Sempre retorna verdadeiro para todas as linhas do DB.

SELECT * FROM personagem WHERE FALSE;

SELECT * FROM personagem WHERE TRUE;
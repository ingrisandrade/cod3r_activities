SELECT id, nome, duracao
FROM aula
WHERE
    duracao IN (60, 120, 180, 204, 300);

SELECT id, nome, duracao
FROM aula
WHERE
    duracao = 60
    OR duracao = 120
    OR duracao = 180
    OR duracao = 240
    OR duracao = 300;
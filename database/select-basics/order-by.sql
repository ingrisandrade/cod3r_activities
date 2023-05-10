SELECT id, nome, duracao
FROM aula
WHERE
    duracao IN (60, 120, 180, 204, 300)
ORDER BY duracao;

-- dessa forma ele ordena de fomra ascendente do menor para o maior.

SELECT id, nome, duracao
FROM aula
WHERE
    duracao IN (60, 120, 180, 204, 300)
ORDER BY duracao ASC;

-- dessa forma ele ordena de forma ascendente do menor para o maior, de forma explícita.

SELECT id, nome, duracao
FROM aula
WHERE
    duracao IN (60, 120, 180, 204, 300)
ORDER BY duracao DESC;

-- Dessa forma ele ordena de forma descendente, do maior para o menor.

SELECT id, nome, duracao
FROM aula
WHERE
    duracao IN (60, 120, 180, 204, 300)
ORDER BY duracao DESC, nome DESC;

--  neste caso ele tbm vai considerar o nome de fomra descendente.

SELECT id, nome, duracao
FROM aula
WHERE
    duracao IN (60, 120, 180, 204, 300)
ORDER BY duracao DESC, nome ASC;
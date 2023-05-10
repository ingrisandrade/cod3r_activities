SELECT id, nome, duracao
FROM aula
WHERE
    duracao <= 60
    AND duracao <> 0; -- Pode ser !=0

-- filtra todas as aulas que tem a duração menor ou igual a 60 e diferente de zer(ou maior que zero).

SELECT
    id,
    nome,
    duracao,
    gratis
FROM aula
WHERE
    duracao >= 20 * 60
    AND gratis = 1;

-- filtra todas as aulas maiores de 20 minutos e que são gratis.

SELECT
    id,
    nome,
    duracao,
    gratis
FROM aula
WHERE
    duracao >= 40 * 60 * 60
    AND gratis = 0; -- Pode ser: NOT gratis ou !gratis

-- filtar os cursos que são maiores que 40 horas e são pagos.
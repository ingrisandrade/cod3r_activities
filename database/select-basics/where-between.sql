SELECT id, nome, duracao,
FROM aula
WHERE
    duracao <= 60
    AND duracao >= 1
    AND nome = 'Conclusão do Módulo';

SELECT id, nome, duracao
FROM aula
WHERE
    duracao BETWEEN 1 AND 60
    AND nome = 'Conclusão do Módulo';

-- BETWEEN também suporta datas.
-- BETWEEN quer dizer: entre. Ou seja, duracao entre 1 e 60.
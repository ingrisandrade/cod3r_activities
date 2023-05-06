SELECT sumario_disciplinas FROM aluno;

SELECT
    JSON_EXTRACT(
        sumario_disciplinas,
        "$.semestres[0].disciplinas[0].mediaFinal"
    )
FROM aluno;

-- O que o JSON_EXTRACT faz é pegar uma parte da tabela.

SELECT *
FROM aluno
WHERE
    JSON_CONTAINS(
        sumario_disciplinas,
        '{"nome" : "Cálculo I"}',
        "$.semestres[0].disciplinas"
    );
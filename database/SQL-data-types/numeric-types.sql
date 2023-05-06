DROP TABLE aluno;

CREATE TABLE
    aluno (
        matricula CHAR(10) NOT NULL,
        -- o char ocupa todos o espaço reservado no comando para armazenar o valor.
        nome VARCHAR(120) NOT NULL,
        -- o varchar ocupa um espaço menor no disco, mas ele coloca um espaço adicional.
        nome_social VARCHAR(80),
        semestre TINYINT,
        creditos_cursados SMALLINT,
        media_geral DECIMAL(4, 2) -- Se for ponto flutuante deve-se usar DOUBLE.
    );

INSERT INTO aluno
VALUES (
        "202106A6F7",
        "Marlos Pinheiro Borges",
        "Marlin",
        3,
        56,
        8.7
    );

SELECT * FROM aluno;
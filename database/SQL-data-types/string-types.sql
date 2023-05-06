CREATE TABLE
    aluno (
        matricula CHAR(10) NOT NULL,
        -- o char ocupa todos o espaço reservado no comando para armazenar o valor.
        nome VARCHAR(120) NOT NULL,
        -- o varchar ocupa um espaço menor no disco, mas ele coloca um espaço adicional.
        nome_social VARCHAR(80)
    );

INSERT INTO aluno
VALUES (
        "202106A6F7",
        "Marlos Pinheiro Borges",
        "Marlin"
    );

SELECT * FROM aluno;
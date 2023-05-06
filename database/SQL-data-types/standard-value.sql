DROP TABLE aluno;

CREATE TABLE
    aluno (
        matricula CHAR(10) NOT NULL,
        nome VARCHAR(120) NOT NULL,
        nome_social VARCHAR(80),
        semestre TINYINT DEFAULT 1,
        creditos_cursados SMALLINT DEFAULT 0,
        media_geral DECIMAL(4, 2) DEFAULT 0,
        data_ingresso DATE NOT NULL DEFAULT (CURRENT_DATE),
        data_conclusao DATE,
        sexo ENUM('masculino', 'feminino'),
        areas_interesse SET('Big Data', 'Banco de Dados', 'Desenvolvimento'),
        bolsista BOOLEAN DEFAULT false
    );

INSERT INTO aluno
VALUES (
        "202106A6F7",
        "Marlos Pinheiro Borges",
        "Marlin",
        3,
        56,
        8.7,
        "2021-02-10",
        NULL,
        "masculino",
        "Banco de Dados,Desenvolvimento",
        true
    );

SELECT * FROM aluno;
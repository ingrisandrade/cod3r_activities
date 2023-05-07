DROP TABLE IF EXISTS departamento;

CREATE TABLE
    IF NOT EXISTS departamento (
        id INT NOT NULL UNIQUE,
        -- NOT NULL UNIQUE, é equivalente a uma chave primária.
        -- A PK nào aceita vslores nulos e não aceita repetição
        nome VARCHAR(60) NOT NULL,
        localizacao VARCHAR(80)
    );

INSERT INTO departamento VALUES ( 1, 'Gerencia de TI', NULL );

INSERT INTO departamento
VALUES (
        1,
        'Gerencia de TI',
        'Bloco B, Terceiro Andar Sl310'
    );

INSERT INTO departamento
VALUES (
        2,
        'RH',
        'Bloco B, Quarto Andar Sl407'
    );

SELECT * FROM departamento;
DROP TABLE IF EXISTS departamento;

CREATE TABLE
    IF NOT EXISTS departamento (
        id INT PRIMARY KEY,
        -- PRIMARY KEY, não acieta valor nulo e o valor precisa ser único.
        nome VARCHAR(60) NOT NULL UNIQUE,
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
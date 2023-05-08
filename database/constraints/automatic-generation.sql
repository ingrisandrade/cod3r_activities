DROP TABLE IF EXISTS departamento;

CREATE TABLE
    IF NOT EXISTS departamento (
        id INT PRIMARY KEY AUTO_INCREMENT,
        -- O AUTO_INCREMENT gera automaticamente a surrogate key, que é uma chave artificial de forma incremental, msd isso não impede de em algum momento uma chave ser posta manualmente, por tanto que siga as regras da tabela.
        nome VARCHAR(60) NOT NULL UNIQUE,
        localizacao VARCHAR(80)
    );

INSERT INTO departamento (nome, localizacao) VALUES ('RH', NULL );

INSERT INTO departamento
VALUES (
        100,
        'Financeiro',
        'Bloco B, Terceiro Andar Sl310'
    );

INSERT INTO departamento (nome) VALUES ( 'Terc.' );

SELECT * FROM departamento;
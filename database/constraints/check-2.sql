SHOW VARIABLES LIKE 'version';

DROP TABLE IF EXISTS departamento;

CREATE TABLE
    IF NOT EXISTS departamento (
        id INT PRIMARY KEY AUTO_INCREMENT,
        -- O AUTO_INCREMENT gera automaticamente a surrogate key, que é uma chave artificial de forma incremental, msd isso não impede de em algum momento uma chave ser posta manualmente, por tanto que siga as regras da tabela.
        nome VARCHAR(60) NOT NULL UNIQUE,
        localizacao VARCHAR(80),
        qtde_funcionarios INT NOT NULL CHECK (qtde_funcionarios >= 0) DEFAULT 0 -- Nesse caso(como está na declaração) não pode ter uma quantidade de funcionários negativa e não pode ser nulo.
    );

INSERT INTO departamento (nome, qtde_funcionarios) VALUES ('RH', 2);

INSERT INTO departamento (nome, qtde_funcionarios) VALUES ('TI', 0);

INSERT INTO
    departamento (nome)
VALUES ('Financeiro');

SELECT * FROM departamento;
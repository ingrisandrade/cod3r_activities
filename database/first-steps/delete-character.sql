-- Criar novos personagens...

INSERT INTO personagem (id, nome) VALUES (1000, 'Carlos');

INSERT INTO
    personagem (id, nome, altura)
VALUES (1001, 'Daniel', 1.83);

INSERT INTO
    personagem (id, nome)
VALUES (1002, 'Maria'), (1003, 'Bia'), (1004, 'Ana');

DELETE FROM personagem WHERE id >= 1003;

-- DELETE FROM exlcui de forma física.

-- Ou seja, exclui totalmente da tabela.

DELETE FROM personagem WHERE nome = 'Daniel';

DELETE FROM personagem WHERE altura IS NULL;

SELECT * FROM personagem WHERE deleted_at IS NULL;

-- soft delete:

-- deleted_at (DATE)

-- para consultar essa coluna que foi excluida, usar o comando:

SELECT * FROM personagem WHERE deleted_as IS NULL;

-- Isso quer dizer que o registro não foi excluido de forma lógica, continua fisicamente no banco de dados.
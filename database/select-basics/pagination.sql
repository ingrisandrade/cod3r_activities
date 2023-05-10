-- LIMIT limita a quantidade de registros

-- OFFSET é o deslocamento dentro da tabela

-- OFFSET quer dizer desvio

SELECT id, nome, data_publicacao FROM aula LIMIT 2;

SELECT id, nome, data_publicacao FROM aula LIMIT 10 OFFSET 20;

-- trás o offset de forma explicíta, visualmente é melhor para identificar

SELECT id, nome, data_publicacao FROM aula LIMIT 10, 20;

-- Outra forma de consultar o LIMIT e o OFFSET
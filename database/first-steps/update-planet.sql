UPDATE planeta SET id = 100 WHERE id = 600 LIMIT 1;

-- atualiza o id para 100, fazendo a tabela ter ids únicos.

UPDATE planeta SET id = id / 100;

-- atualiza os id dividindo o id atual por 100.
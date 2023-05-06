-- DDL - Data DEfinition Lang.

DROP TABLE personagens;
-- Exclui a tabela personagens.

DROP TABLE IF EXISTS personagens;

-- Não gera problema no console devido ao IF EXISTS, nesse caso ele só exclui se a tabela existir.

DROP TABLE IF EXISTS personagem, planeta;

DROP DATABASE starwars;
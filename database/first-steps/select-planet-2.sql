SELECT nome, raio FROM planeta;
-- seleciona planeta -> nome, diametro.

SELECT * FROM planeta WHERE nome <> 'Tatooine';
-- seleciona planeta -> nome <> 'Tatooine'.

SELECT * FROM planeta WHERE habitado = 1;
-- seleciona planeta habitado.

SELECT * FROM planeta WHERE habitado = 0;
-- seleciona planeta não habitado.

SELECT * FROM planeta WHERE id % 2 = 0;
-- seleciona planeta -> id par.

SELECT * FROM planeta WHERE id % 2 <> 0;
-- seleciona planeta -> id ímpar.
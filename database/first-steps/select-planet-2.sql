SELECT nome, raio * 2 FROM planeta;

-- seleciona planeta -> nome, diametro.

SELECT id, nome FROM planeta WHERE nome <> 'Tatooine';

-- seleciona planeta -> nome <> 'Tatooine'.

SELECT id, nome, habitado FROM planeta WHERE habitado = 1;

-- seleciona planeta habitado.

SELECT id, nome, habitado FROM planeta WHERE habitado = 0;

-- seleciona planeta não habitado.

SELECT id, nome, habitado FROM planeta WHERE !habitado;

-- segunda forma de selacionar não habitado.

SELECT id, nome, habitado FROM planeta WHERE NOT habitado;

-- terceira forma de selacionar não habitado.

SELECT id, nome, habitado FROM planeta WHERE id % 2 = 0;

-- seleciona planeta -> id par.

SELECT * FROM planeta WHERE id % 2 <> 0;

-- seleciona planeta -> id ímpar.
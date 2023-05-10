SELECT id, nome FROM aula WHERE nome LIKE 'Módulo';

-- LIKE quer dizer: como. Ou seja nome como Módulo.

SELECT id, nome FROM aula WHERE nome LIKE 'Módulo%';

-- no caso do percentual, quer dizer que, pode vir qualquer coisa desde que comece com a palavra módulo.

SELECT id, nome FROM aula WHERE nome LIKE 'Módulo_';

-- neste caso filtra qualquer coisa que começa com módulo, mas tenha apenas uma letra depois.ADD

SELECT id, nome FROM aula WHERE nome LIKE '%Módulo';

-- neste caso filtra qualquer coisa que termina com a palavra Módulo.

SELECT id, nome FROM aula WHERE nome LIKE '%Módulo%';

-- caso filtra qualquer coisa que contém Módulo, seja no inínio, no meio ou no fim.
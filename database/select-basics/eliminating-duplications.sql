-- Falta baixar os dados

SELECT DISTINCT nome FROM aula WHERE nome = 'Concusão do Módulo';

-- o DISTINCT elimina as duplicações.

SELECT DISTINCT nome, duracao FROM aula WHERE nome = 'Concusão do Módulo';

-- neste caso para eliminar as duplicações, nome e duração devem conter as mesmas informações.
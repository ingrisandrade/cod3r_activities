-- Constraints são as restrições aplicadas aos dados de uma tabela.

CREATE TABLE
    nome_tabela (
        coluna1 tipo CONSTRAINT,
        coluna2 tipo CONSTRAINT,
        coluna3 tipo CONSTRAINT,
...
    ) -- Uma CONSTRAINT não precisa necessariamente ser aplicada apenas para uma coluna de dados.
    -- É possível ter constraint que são aplicadas a duas, três, quatro colunas...
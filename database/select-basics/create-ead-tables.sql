DROP TABLE IF EXISTS aula;
DROP TABLE IF EXISTS curso;

CREATE TABLE IF NOT EXISTS curso (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(120) NOT NULL,
  descricao VARCHAR(4000),
  visivel BOOLEAN NOT NULL DEFAULT 0,
  gratis BOOLEAN NOT NULL DEFAULT 0,
  data_publicacao DATETIME,
  duracao INT,
  nota DECIMAL(3, 2) NOT NULL DEFAULT 0,
  preco DECIMAL(7, 2) NOT NULL DEFAULT 0,
  CONSTRAINT check_nota CHECK (nota >= 0 AND nota <= 5),
  CONSTRAINT check_preco CHECK (preco >= 0)
);

CREATE TABLE IF NOT EXISTS aula (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(120) NOT NULL,
  video_url VARCHAR(1000),
  visivel BOOLEAN NOT NULL DEFAULT 1,
  gratis BOOLEAN NOT NULL DEFAULT 0,
  data_publicacao DATETIME,
  duracao INT NOT NULL DEFAULT 0,
  id_curso INT UNSIGNED NOT NULL,
  Foreign Key (id_curso) REFERENCES curso(id)
);

SELECT * FROM curso;
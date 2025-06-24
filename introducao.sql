# Apresenta todos os bancos de dados que o usuário tem acesso
SHOW DATABASES;

# Seleciona um determinado banco de dados
USE lojinha;

# Apresenta todas as tabelas de um determinado banco de dados
SHOW TABLES;

# Criar uma nova tabela no banco de dados
CREATE TABLE categorias (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(50)
)

# Altera a estrutura de uma tabela
ALTER TABLE categorias MODIFY COLUMN id INT NOT NULL AUTO_INCREMENT;

# Altera a estrutura de uma tabela incluindo uma nova coluna
ALTER TABLE categorias ADD COLUMN data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

# Remove uma tabela
DROP TABLE categorias;

# Selecionar registros da tabela
SELECT * FROM categorias;

# Inserir registros na tebela
INSERT INTO categorias (nome) VALUES ('Eletrônicos')

# Atualiza um registro de uma tabela
UPDATE categorias SET nome = 'Jogos' WHERE id = 4;

# Deletar registro da tabela (Perigo ao usar sem WHERE)
DELETE FROM categorias;

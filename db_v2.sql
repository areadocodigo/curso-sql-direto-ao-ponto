DROP TABLE IF EXISTS categorias;

CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS fabricantes;

CREATE TABLE fabricantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS produtos;

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    categorias_id INT NOT NULL,
    fabricantes_id INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (categorias_id) REFERENCES categorias(id),
    FOREIGN KEY (fabricantes_id) REFERENCES fabricantes(id)
);

DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    estado CHAR(2) NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS vendas;

CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    clientes_id INT NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (clientes_id) REFERENCES clientes(id)
);

DROP TABLE IF EXISTS vendas_produtos;

CREATE TABLE vendas_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vendas_id INT NOT NULL,
    produtos_id INT NOT NULL,
    quantidade TINYINT NOT NULL,
    preco_venda DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (vendas_id) REFERENCES vendas(id),
    FOREIGN KEY (produtos_id) REFERENCES produtos(id)
);

INSERT INTO categorias (nome) VALUES
('Eletrônicos'),
('Eletrodomésticos'),
('Móveis'),
('Informática'),
('Brinquedos');

INSERT INTO fabricantes (nome, estado) VALUES
('Samsung', 'SP'),
('LG', 'SP'),
('Dell', 'RS'),
('Brastemp', 'MG'),
('Microsoft', 'RJ');

INSERT INTO produtos (categorias_id, fabricantes_id, nome, preco) VALUES
(1, 1, 'Smartphone Galaxy S23', 3999.99),
(1, 2, 'Smart TV 55 Polegadas', 2999.50),
(4, 3, 'Notebook Dell Inspiron', 4500.00),
(2, 4, 'Geladeira Frost Free', 3200.75),
(4, 5, 'Xbox Series X', 3999.00),
(5, 2, 'Carrinho Controle Remoto', 199.90),
(3, 4, 'Sofá Retrátil', 1500.00),
(3, 4, 'Cama Box Queen', 1800.00);

INSERT INTO clientes (nome, cpf, estado) VALUES
('Ana Silva', '11122233344', 'BA'),
('Bruno Souza', '55566677788', 'SP'),
('Carlos Lima', '99988877766', 'RJ'),
('Daniela Costa', '33344455566', 'MG'),
('Eduardo Ramos', '22233344455', 'RS');

INSERT INTO vendas (clientes_id) VALUES
(1),
(2),
(3),
(4),
(5);

INSERT INTO vendas_produtos (vendas_id, produtos_id, quantidade, preco_venda) VALUES
(1, 1, 1, 3999.99),
(1, 5, 1, 3999.00),
(2, 2, 1, 2999.50),
(2, 7, 2, 1500.00),
(3, 3, 1, 4500.00),
(3, 6, 3, 199.90),
(4, 4, 1, 3200.75),
(5, 8, 1, 1800.00);

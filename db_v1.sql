CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    fabricante VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO produtos (nome, fabricante, preco, categoria) VALUES ('Microfone', 'Sony', 2199.00, 'Áudio');

INSERT INTO produtos (nome, fabricante, preco, categoria) VALUES
('Notebook XPS 13', 'Dell', 7999.99, 'Informática'),
('Smartphone Galaxy S23', 'Samsung', 4599.90, 'Telefonia'),
('Fone de Ouvido WH-1000XM5', 'Sony', 2199.00, 'Áudio'),
('Monitor UltraSharp 27', 'Dell', 3299.99, 'Informática'),
('Cafeteira Espresso PrimaLatte', 'Oster', 899.90, 'Eletrodomésticos'),
('Smart TV 55 Polegadas', 'LG', 3499.00, 'Eletrônicos'),
('Mouse MX Master 3S', 'Logitech', 499.99, 'Periféricos'),
('Impressora LaserJet Pro', 'HP', 1299.90, 'Periféricos');

-- ===========================================
--  BANCO DE DADOS
-- ===========================================
CREATE DATABASE Perfumaria;
GO

USE Perfumaria;
GO

-- ===========================================
-- TABELAS
-- ===========================================

CREATE TABLE Cliente (
    id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);
GO

CREATE TABLE Produto (
    id_produto INT IDENTITY(1,1) PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10,2) NOT NULL
);
GO

CREATE TABLE Venda (
    id_venda INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente INT NOT NULL,
    data_venda DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);
GO

CREATE TABLE ItemVenda (
    id_item INT IDENTITY(1,1) PRIMARY KEY,
    id_venda INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
GO

-- ===========================================
-- INSERTS
-- ===========================================

INSERT INTO Cliente (nome, telefone, email) VALUES
('Ana Paula', '1199999-1111', 'ana@gmail.com'),
('Joao Pedro', '1198888-2222', 'joao@gmail.com'),
('Mariana Lima', '1197777-3333', 'mariana@gmail.com');
GO

INSERT INTO Produto (nome_produto, categoria, preco) VALUES
('Perfume Floral Harmony', 'Perfume Feminino', 199.90),
('Perfume Black Intense', 'Perfume Masculino', 249.90),
('Body Splash Sweet Love', 'Body Splash', 49.90),
('Creme Hidratante Vanilla', 'Hidratante', 39.90);
GO

INSERT INTO Venda (id_cliente, data_venda) VALUES
(1, '2025-01-10'),
(1, '2025-01-12'),
(2, '2025-01-15');
GO

INSERT INTO ItemVenda (id_venda, id_produto, quantidade) VALUES
(1, 1, 1),
(1, 4, 2),
(2, 2, 1),
(3, 3, 3);
GO

-- ===========================================
-- SELECTS
-- ===========================================

SELECT nome_produto, categoria, preco
FROM Produto
ORDER BY preco DESC;
GO

SELECT v.id_venda, c.nome AS cliente, v.data_venda
FROM Venda v
JOIN Cliente c ON c.id_cliente = v.id_cliente;
GO

SELECT iv.id_item, p.nome_produto, iv.quantidade
FROM ItemVenda iv
JOIN Produto p ON iv.id_produto = p.id_produto
WHERE iv.id_venda = 1;
GO

SELECT * FROM Produto
WHERE preco < 100;
GO

SELECT TOP 2 *
FROM Cliente;
GO

-- ===========================================
-- UPDATES
-- ===========================================

UPDATE Cliente
SET telefone = '1191234-5678'
WHERE id_cliente = 1;
GO

UPDATE Produto
SET preco = preco * 1.10
WHERE id_produto = 2;
GO

UPDATE ItemVenda
SET quantidade = 5
WHERE id_item = 4;
GO

-- ===========================================
-- DELETES
-- ===========================================

DELETE FROM Produto
WHERE categoria = 'Body Splash';
GO

DELETE FROM Cliente
WHERE email = 'mariana@gmail.com';
GO

DELETE FROM ItemVenda
WHERE quantidade = 0;
GO

-- CRIANDO BANCO DE DADOS DO E-COMMERCE
CREATE DATABASE db_estrelamodas;

-- COLOCANDO EM USO O BANCO DE DADOS
USE db_estrelamodas;

-- CRIANDO TABELA DE PRODUTO
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_compra date ,
preco decimal(6,2)  NOT NULL,
PRIMARY KEY(id)
);

-- INSERINDO DADOS NA TABELA
INSERT INTO tb_produtos(nome, quantidade, data_compra, preco)
VALUES("Camisa", 50, "2023-12-05", 25.00),
("Bermuda", 75, "2023-10-07", 70.00),
("Meia", 100, "2023-08-15", 15.00),
("Sapato", 25, "2023-07-09", 150.00),
("Chinela", 25, "2023-07-10", 50.00),
("Calça", 30, "2023-05-05", 99.00),
("Tênis", 27, "2023-07-09", 300.00),
("Mizunão", 100, "2023-12-01", 1000.00),
("Chapéu", 10, "2023-04-09", 80.00);

-- SELECT RETORNANDO OS PRODUTOS COM PREÇO > 500
SELECT * FROM tb_produtos WHERE preco > 500.00;

-- SELECT RETORNANDO OS PRODUTOS COM PREÇO < 500
SELECT * FROM tb_produtos WHERE preco < 500.00;

-- UPDATE DE REGISTRO 
UPDATE tb_produtos SET preco = 600.00 WHERE id = 3;

SELECT * FROM tb_produtos;


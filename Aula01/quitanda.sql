-- Criar o Banco de Dados
CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date ,
preco decimal  NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Tomate", 100, "2023-12-20", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Maçã", 100, "2023-12-18", 11.00),
("Laranja", 100, "2023-12-10", 15.00),
("Banana", 100, "2023-12-15", 11.90),
("Uva", 100, "2023-12-09", 30.00),
("Melancia", 100, "2023-12-23", 20.00);

SELECT * FROM tb_produtos;

-- 0000.00
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

UPDATE tb_produtos SET preco = 11.90 WHERE id = 4;

-- O MySQL TEM UMA TRAVA DE SEGURANÇA 
UPDATE tb_produtos SET preco = 11.90;

-- Desligando a trava de segurança
-- SET SQL_SAFE_UPDATES = 0;
-- Ligando a trava de segurança
-- SET SQL_SAFE_UPDATES = 1;

DELETE FROM tb_produtos WHERE id = 3;

INSERT INTO tb_produtos(nome_produto, quantidade, data_validade, preco)
VALUES("Jaboticaba", 200, "2023-12-25", 45.00);

-- ADICIONA ATRIBUTO NA TABELA
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- DELETA ATRIBUTO DA TABELA 
ALTER TABLE tb_produtos DROP descricao;

-- MUDA NOME DA TABELA
ALTER TABLE tb_produtos CHANGE nome nome_produto varchar(255);

SELECT * FROM tb_produtos;

SELECT nome_produto, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 5;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("MAÇÃ", 100, "2023-12-20", 8.00);

SELECT * FROM tb_produtos WHERE data_validade = "2023-12-20";

SELECT * FROM tb_produtos WHERE preco > 15.00;

SELECT * FROM tb_produtos WHERE preco > 15.00 OR nome_produto = "maça";

SELECT * FROM tb_produtos WHERE preco > 15.00 AND nome_produto = "maça";

SELECT * FROM tb_produtos WHERE not id = 1;

SELECT nome_produto, CONCAT('R$ ', FORMAT(preco, 2, 'pt-br')) AS preço FROM tb_produtos;

SELECT nome_produto, date_format(data_validade, '%d/%m/%Y') AS Data_Validade FROM tb_produtos;

SELECT @@collation_database;

SELECT * FROM tb_produtos;



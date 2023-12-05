-- CRIANDO BANCO DE DADOS 
CREATE DATABASE  db_farmacia_bem_estar; 

-- COLOCANDO O BANCO DE DADOS EM USO
USE db_farmacia_bem_estar;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
descricao varchar(50),
PRIMARY KEY (id)
);
-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Medicamento", "Referência");

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Medicamento", "Genérico");

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Cosmético", "Demartológico");

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Cosmético", "Não Demartológico");

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Vacina", "Aplicaca na Loja");

INSERT INTO tb_categorias (tipo, descricao)
VALUES ("Vacina", "Não Aplicaca na Loja");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_produto
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
laboratório varchar(255), 
prescrito varchar(255),
preco decimal(6, 2) NOT NULL,
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_produtos;

-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, laboratório, prescrito, preco, categoria_id)
VALUES ("Novalviga 1g", "Sanofi", "SEM prescrição", 40.09, 1);

INSERT INTO tb_produtos (nome, laboratório, prescrito, preco, categoria_id)
VALUES ("Dipirona 500mg", "Medley", "SEM prescrição", 3.99, 2);

INSERT INTO tb_produtos (nome, laboratório, prescrito, preco, categoria_id)
VALUES ("Gel de Limpeza Facial", "Darrow", "SEM prescrição", 54.99, 3);

INSERT INTO tb_produtos (nome, laboratório, prescrito, preco, categoria_id)
VALUES ("Sabonete Lux", "Lux", "SEM prescrição", 2.49, 4);

INSERT INTO tb_produtos (nome, laboratório, prescrito, preco, categoria_id)
VALUES ("Meningite B", "GSK", "COM prescrição", 579.92, 5);

INSERT INTO tb_produtos (nome, laboratório, prescrito, preco, categoria_id)
VALUES ("Mesigyna Ampola de 1ml", "Bayer", "COM prescrição", 38.59, 6);

INSERT INTO tb_produtos (nome, laboratório, prescrito, preco, categoria_id)
VALUES ("Amoxicilina", "EMS", "COM prescrição", 55.69, 2);

INSERT INTO tb_produtos (nome, laboratório, prescrito, preco, categoria_id)
VALUES ("Yasmin ", "Bayer", "COM prescrição", 78.19, 1);

-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE preco < 50.00;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60 ORDER BY preco;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT nome, laboratório, prescrito, preco, tb_categorias.tipo 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
SELECT nome, laboratório, prescrito, preco, tb_categorias.tipo 
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tipo = "cosmético";






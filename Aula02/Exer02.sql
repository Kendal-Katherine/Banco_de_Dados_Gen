-- CRIANDO BANCO DE DADOS 
CREATE DATABASE  db_pizzaria_legal; 

-- COLOCANDO O BANCO DE DADOS EM USO
USE db_pizzaria_legal;

-- Criar a tabela tb_categorias
CREATE TABLE tb_tipos(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
tamanhos varchar(50),
PRIMARY KEY (id)
);
-- Insere dados na tabela tb_tipos
INSERT INTO tb_tipos (tipo, tamanhos)
VALUES ("Tradicionais", "Brotinho");

INSERT INTO tb_tipos (tipo, tamanhos)
VALUES ("Tradicionais", "Grande");

INSERT INTO tb_tipos (tipo, tamanhos)
VALUES ("Tradicionais", "Extra Grande");

INSERT INTO tb_tipos (tipo, tamanhos)
VALUES ("Especiais", "Brotinho");

INSERT INTO tb_tipos (tipo, tamanhos)
VALUES ("Especiais", "Grande");

INSERT INTO tb_tipos (tipo, tamanhos)
VALUES ("Especiais", "Extra Grande");

INSERT INTO tb_tipos (tipo, tamanhos)
VALUES ("Doces", "Brotinho");

INSERT INTO tb_tipos (tipo, tamanhos)
VALUES ("Doces", "Grande");

INSERT INTO tb_tipos (tipo, tamanhos)
VALUES ("Doces", "Extra Grande");

-- Lista todos os dados da tabela tb_tipos
SELECT * FROM tb_tipos;


-- Criar a Tabela tb_pizzas
CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
sabor varchar(255) NOT NULL,
borda varchar(255), 
ingredientes varchar(255),
preco decimal(6, 2),
tipo_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (tipo_id) REFERENCES tb_tipos(id)
);

-- Insere dados na tabela tb_pizzas
INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, tipo_id)
VALUES ("Atum", "Recheada", "Atum sólido temperado e cebola", 35.99, 1);

INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, tipo_id)
VALUES ("Atum", "Recheada", "Atum sólido temperado e cebola", 49.99, 2);

INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, tipo_id)
VALUES ("Atum", "Recheada", "Atum sólido temperado e cebola", 59.99, 3);

INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, tipo_id)
VALUES ("Peperoni", "Não Recheada", "Mussarela e Peperoni", 35.99, 4);

INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, tipo_id)
VALUES ("Peperoni", "Não Recheada", "Mussarela e Peperoni", 49.99, 5);

INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, tipo_id)
VALUES ("Peperoni", "Não Recheada", "Mussarela e Peperoni", 59.99, 6);

INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, tipo_id)
VALUES ("Chocolate", "Não Recheada", "Creme de chocolate e morango", 35.99, 7);

INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, tipo_id)
VALUES ("Chocolate", "Não Recheada", "Creme de chocolate e morango", 49.99, 8);

INSERT INTO tb_pizzas (sabor, borda, ingredientes, preco, tipo_id)
VALUES ("Chocolate", "Não Recheada", "Creme de chocolate e morango", 59.99, 9);


SELECT * FROM tb_pizzas;

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor seja menor do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco < 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100 ORDER BY preco;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT sabor, borda, ingredientes, preco, tb_tipos.tipo 
FROM tb_pizzas INNER JOIN tb_tipos
ON tb_pizzas.tipo_id = tb_tipos.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT sabor, borda, ingredientes, preco, tb_tipos.tipo 
FROM tb_pizzas INNER JOIN tb_tipos 
ON tb_pizzas.tipo_id = tb_tipos.id
WHERE tipo = "Doces";

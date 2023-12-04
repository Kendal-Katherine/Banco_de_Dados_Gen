-- CRIANDO BANCO DE DADOS DO RH
CREATE DATABASE db_rh;

-- COLOCANDO EM USO O BANCO DE DADOS DO RH
USE db_rh;

-- CRIANDO TABELA FUNCIONARIOS 
CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
cargo varchar(100),
data_admissao date ,
salario decimal(6,2)  NOT NULL,
PRIMARY KEY(id)
);

-- INSERINDO VALORES NA TABELA 
INSERT INTO tb_funcionarios(nome, cargo, data_admissao, salario)
VALUES ("Kendal", "Desenvolvedora Junior", "2024-02-08", 3000.00),
("Marta", "Gerente", "2020-01-02", 8000.00),
("Cristina", "Desenvolvedora Junior", "2024-02-08", 3000.00),
("Lucia", "Desenvolvedora Pleno", "2022-04-05", 7000),
("Sofia", "Assistente Geral", "2022-10-07", 4000.00),
("Clara", "Recepcionista", "2023-10-07", 1900.00);

-- EXIBINDO A TABELA CRIADA E VALORES ADICIONADOS
SELECT * FROM tb_funcionarios;

-- SELECT RETORNANDO OS COLABORADORES COM SALÁRIO > 2000
SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

-- SELECT RETORNANDO OS COLABORADORES COM SALÁRIO < 2000
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

-- UPDATE DE REGISTRO 
UPDATE tb_funcionarios SET salario = 5000.00 WHERE id = 1;
 
SELECT * FROM tb_funcionarios;

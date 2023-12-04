-- CRIANDO BANCO DE DADOS ESCOLAR
CREATE DATABASE db_escola;

-- COLOCANDO EM USO O BANCO DE DADOS
USE db_escola;

-- CRIANDO TABELA DE ALUNOS
CREATE TABLE tb_escola(
id bigint AUTO_INCREMENT,
nome_aluno varchar(255) NOT NULL,
materia varchar(50),
nota decimal(6,2)  NOT NULL,
bimestre int,
PRIMARY KEY(id)
);

-- INSERINDO DADOS NA TABELA
INSERT INTO tb_escola(nome_aluno, materia, nota, bimestre)
VALUES("Kendal", "Português", 9, 4),
("Leandro", "Matemática", 10, 4),
("Marta", "Biologia", 5, 4),
("Pedro", "Química", 4, 4),
("Chico", "Inglês", 7, 4),
("Luiza", "Canto", 10, 4),
("Ariana", "Teatro", 10, 4),
("Larissa", "Educação Física", 8, 4),
("Fernando", "Tecnologia", 9, 4);

-- SELECT RETORNANDO OS ESTUDANTES COM NOTA > 7
SELECT * FROM tb_escola WHERE nota > 7;

-- SELECT RETORNANDO OS ESTUDANTES COM NOTA < 7
SELECT * FROM tb_escola WHERE nota < 7;

-- UPDATE DE REGISTRO 
UPDATE tb_escola SET nota = 8 WHERE id = 3;

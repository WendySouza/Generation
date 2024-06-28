-- Atividade 1
CREATE DATABASE db_rh;

USE db_rh; 

CREATE TABLE tb_colaboradores (
id BIGINT auto_increment primary key,
nome varchar(255) not null, 
setor varchar(50) not null,
funcao varchar(50) not null,
salario decimal(6,2) not null
);

INSERT INTO tb_colaboradores (nome, setor, funcao, salario)
VALUES ("Ana Silva", "Operações","Supervisora",2700.00),
("Beatriz Lima", "RH", "Analista de RH", 1500.00),
("Lucas Santos", "Marketing", "Designer", 1800.00),
("Roberta Souza", "Financeiro", "Auxiliar financeiro", 1500.00),
("Heitor Nascimento", "TI", "Desenvolvedor", "3000.00");

SELECT * FROM tb_colaboradores
WHERE salario > 2000.00; 

SELECT * FROM tb_colaboradores 
WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 3000.00 WHERE id = 1;

SELECT * FROM tb_colaboradores;
CREATE DATABASE db_farmacia_bem_estar; 

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT auto_increment PRIMARY KEY,
nome varchar(50)not null,
descricao varchar(255) not null
);

CREATE TABLE tb_produtos (
id BIGINT auto_increment PRIMARY KEY,
nome varchar(255)not null,
descricao varchar(255),
preco decimal(6,2) not null, 
estoque int not null,
categorias_id BIGINT not null,
CONSTRAINT fk_tb_produtos_tb_categorias
FOREIGN KEY (categorias_id)
REFERENCES db_farmacia_bem_estar.tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) 
VALUES 
("Medicamentos", "Produtos destinados ao tratamento de doenças"),
("Equipamentos", "Equipamentos médicos"),
("Higiene", "Produtos de higiene"),
("Suplementos", "Suplementação alimentar"),
("Cosméticos", "Produtos de cuidados pessoais");


INSERT INTO tb_produtos (nome, descricao, preco, estoque, categorias_id)
VALUES 
("Dipirona", "Analgésico e Antipirético", 5.00, 20, 1),
("Histamin", "Antialérgico", 15.00, 102, 1),
("Shampoo Antiqueda", "Shampoo estimulante antiqueda", 80.00, 28, 5),
("Nutren", "Suplemento Alimentar Chocolate", 50.00, 35, 4),
("Creme Dental", "Creme dental branqueador", 8.00, 90, 3),
("Protetor Solar", "Protetor solar fator 50", 75.00, 200, 5),
("Luvas", "Luvas descartáveis", 30.00, 14, 2),
("Termômetro", "Termômetro digital", 45.00, 50, 2);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco > 5.00 AND preco < 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id; 

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.nome = "Cosméticos";




CREATE DATABASE db_cidade_das_carnes; 

USE db_cidade_das_carnes; 

CREATE TABLE tb_categorias (
id BIGINT auto_increment PRIMARY KEY,
nome varchar(30) not null,
descricao varchar(255)
);


CREATE TABLE tb_produtos (
id BIGINT auto_increment PRIMARY KEY,
nome varchar(255)not null,
descricao varchar(255),
preco decimal(6,2) not null, 
peso varchar(20) not null,
categorias_id BIGINT not null,
CONSTRAINT fk_tb_produtos_tb_categorias
FOREIGN KEY (categorias_id)
REFERENCES db_cidade_das_carnes.tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) 
VALUES 
("Bovinos", "Produtos de carne bovina"),
("Suínos", "Produtos de carne suína"),
("Aves", "Produtos de carne de aves"),
("Embutidos", "Produtos embutidos e processados"),
("Veganos", "Produtos veganos");

INSERT INTO tb_produtos (nome, descricao, preco, peso, categorias_id)
VALUES 
("Picanha", "Corte nobre de carne bovina", 120.00, "1kg", 1),
("Costela Suína", "Costela suína marinada", 75.00, "1.5kg", 2),
("Frango Inteiro", "Frango inteiro congelado", 30.00, "2kg", 3),
("Linguiça", "Linguiça de porco artesanal", 45.00, "1kg", 4),
("Carne Moída", "Carne moída bovina", 25.00, "500g", 1),
("Coxinha da Asa", "Coxinha da asa de frango", 35.00, "1kg", 3),
("Presunto", "Presunto fatiado", 55.00, "1kg", 4),
("Frango Vegano", "Frango Vegano à base de ervilha", 35.00, "1kg", 4);

SELECT * FROM tb_produtos WHERE preco > 50.00; 

SELECT * FROM tb_produtos WHERE preco > 50.00 AND preco < 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.nome = "Aves";











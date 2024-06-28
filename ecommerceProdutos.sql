-- CREATE DATABASE db_ecommerce;

USE db_ecommerce; 

CREATE TABLE tb_produtos (
id BIGINT auto_increment PRIMARY KEY,
nome varchar(255) not null,
descricao varchar(300) not null, 
preco decimal(6,2) not null, 
categoria varchar(100) not null,
estoque int not null
);

INSERT INTO tb_produtos (nome, descricao, preco, categoria, estoque)
VALUES ("Fone de ouvido", "Fone de ouvido bluetooth com cancelamento de ruído", 250.00, "Acessórios", 250),
("Monitor", "Monitor 4K ultra HD", 1800.00, "Eletrônicos", 100),
("Impressora", "Impressora com scanner", 800.00, "Periféricos", 45), 
("Mouse sem fio", "Mouse sem fio ergonômico", 200.00, "Acessórios", 150),
("Teclado", "Teclado mecânico para gamers", 450.00, "Acessórios", 25), 
("Notebook", "Notebook para uso pessoal e profissional", 3500.00, "Eletrônicos", 84),
("Smartphone", "Smartphone de última geração", 2000.00, "Eletrônicos", 21),
("Câmera", "Câmera digital de alta resolução", 800.00, "Eletrônicos", 27);

SELECT * FROM tb_produtos
WHERE preco > 500.00;

SELECT * FROM tb_produtos
WHERE preco < 500.00;

SET SQL_SAFE_UPDATES = 0;
UPDATE tb_produtos SET estoque = 0 WHERE nome = "Fone de ouvido"; 

SET SQL_SAFE_UPDATES = 1;





-- DATABASE db_quitanda; /* criando o bando de dados */

USE db_quitanda; -- usando o banco de dados 

CREATE TABLE tb_produtos ( -- criando uma tabela
id BIGINT auto_increment, -- informando que o id será um "inteiro maior" e 
nome varchar(255) not null, -- varchar é igual o String, serve para caracteres 
quantidade int, -- inteiro
datavalidade date, -- data, padronizacao americana, ano, mes e dia 
preco decimal(6,2) not null, -- igual float, numero decimal | tb_produtos
primary key (id)
);

select * from tb_produtos;

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES ("Laranja", 50, "2024-12-15",5.00),
("Banana", 150, "2024-10-13",12.00),
("Abacaxi", 70, "2024-08-21",4.50),
("Morango", 30, "2024-08-15",13.00),
("Tomate", 20, "2024-08-02",17.00);

CREATE TABLE tb_categorias(
id BIGINT auto_increment primary key,
descricao varchar(255) NOT NULL
);

INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");

INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ('Outros');

select * from tb_produtos;

ALTER TABLE tb_produtos ADD categoriaid BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categoorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

UPDATE tb_produtos SET categoriaid = 1 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 6;

-- SELECT * FROM tb_produtos order by nome DESC; 

SELECT * FROM tb_produtos WHERE prpeco in (5.00, 10.00, 15.00);

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00;

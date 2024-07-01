CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id BIGINT auto_increment PRIMARY KEY, 
nome varchar(50) not null,
descricao varchar(255) not null
);

CREATE TABLE tb_pizzas (
id BIGINT auto_increment PRIMARY KEY,
nome varchar(255) not null, 
descricao varchar(255)not null,
preco decimal(6,2) not null, 
tamanho varchar(20), 
categorias_id BIGINT NOT NULL,
CONSTRAINT fk_tb_pizzas_tb_categorias
FOREIGN KEY (categorias_id)
REFERENCES db_pizzaria_legal.tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao)
VALUES 
("Tradicional", "Pizzas com ingredientes tradicionais"),
("Especial", "Pizzas com ingredientes especiais"),
("Vegana", "Pizzas feitas sem ingredientes de origem animal"),
("Doce", "Pizzas com sabores doces"),
("Premium", "Pizzas com ingredientes premium");

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, categorias_id) 
VALUES 
("Mussarela", "Mussarela e tomate", 68.00, "Média - 6 pedaços", 1),
("Frango com Catupiry", "Frango, mussarela e catupiry", 85.00, "Grande - 8 pedaços", 2),
("Chocolate", "Mussarela e chocolate", 32.00, "Broto - 4 pedaços", 4),
("Brócolis", "Mussarela vegana e Brócolis", 89.00, "Grande - 8 pedaços", 3), 
("Margherita", "Mussarela,  manjericão fresco e azeite", 101.00, "Família - 16 pedaços", 5), 
("Calabresa", "Calabresa, queijo e requeijão", 91.00, "Grande - 8 pedaços",2),
("Doce de leite", "Doce de leite com banana", 37.00, "Broto - 4 pedaços", 4),
("Chocolate com Morango", "Chocolate com morango", 45.00, "Broto - 4 pedaços", 4);

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco > 50.00 AND preco < 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id; 

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.nome = "Doce"; 



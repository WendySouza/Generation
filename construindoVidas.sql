CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

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
quantidade int not null,
categorias_id BIGINT not null,
CONSTRAINT fk_tb_produtos_tb_categorias
FOREIGN KEY (categorias_id)
REFERENCES db_construindo_vidas.tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao)
VALUES 
("Ferramentas", "Ferramentas manuais e elétricas"),
("Materiais de Construção", "Blocos, cimento, tijolos e outros materiais de construção"),
("Elétrica", "Materiais elétricos e iluminação"),
("Hidráulica", "Materiais para instalações hidráulicas"),
("Pintura", "Tintas, pincéis e rolos de pintura");

INSERT INTO tb_produtos (nome, descricao, preco, quantidade, categorias_id)
VALUES 
("Martelo", "Martelo de aço com cabo de madeira", 45.00, 150, 1),
("Bloco de Concreto", "Bloco de concreto", 5.50, 2000, 2),
("Fio Elétrico", "Fio de cobre", 120.00, 50, 3),
("Tubo PVC", "Tubo PVC para esgoto", 25.00, 300, 4),
("Tinta Acrílica", "Tinta acrílica branca 18L", 180.00, 80, 5),
("Chave de Fenda", "Chave de fenda cruzada", 15.00, 200, 1),
("Cimento CP II", "Saco de cimento", 30.00, 500, 2),
("Lâmpada LED", "Lâmpada LED", 12.00, 100, 3);
    
SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco > 70.00 AND preco < 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.nome = "Hidráulica";


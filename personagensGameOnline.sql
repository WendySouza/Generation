CREATE DATABASE db_generation_game_online;

USE db_generation_game_online; 

CREATE TABLE tb_classes (
	id BIGINT auto_increment PRIMARY KEY,
    nome varchar(255) not null, 
	descricao varchar(300) not null
    );
    
    CREATE TABLE tb_personagens (
    id BIGINT auto_increment PRIMARY KEY,
    nome varchar(255) not null,
    poder_ataque INT not null,
    poder_defesa INT not null,
    nivel INT not null,
    classe_id BIGINT not null,
    CONSTRAINT fk_tb_personagens_tb_classes
    FOREIGN KEY (classe_id)
    REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, descricao)
VALUES
    ("Mago", "Especialista em magia e feitiços"),
    ("Guerreiro", "Especialista em combate corpo a corpo"),
    ("Arqueiro", "Especialista em ataques à distância"),
    ("Ladino", "Especialista em furtividade e ataques rápidos"),
    ("Clérigo", "Especialista em cura e suporte");

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id)
VALUES
    ("Harry", 2500, 1500, 35, 1),
    ("Celina", 1800, 1700, 40, 2),
    ("Origon", 2200, 1200, 37, 3),
    ("Golias", 2600, 1100, 45, 3),
    ("Amis", 2000, 1300, 38, 4),
    ("Ravenna", 1900, 900, 33, 1),
    ("Elanor", 1700, 1400, 36, 5),
    ("Morgana", 2800, 1600, 42, 1);
    
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa > 1000 AND poder_defesa < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id; 

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = "Arqueiro";





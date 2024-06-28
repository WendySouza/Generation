-- Atividade 3

CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
ra BIGINT auto_increment PRIMARY KEY,
nome varchar(255) not null, 
idade int not null, 
turma varchar(20) not null, 
nota decimal(4,2) not null, 
email varchar(255) not null
);

INSERT INTO tb_estudantes (nome, idade, turma, nota, email)
VALUES 
("Ana Silva", 14, "8º A", 8.5, "ana.silva@hotmail.com"),
("Bruna Souza", 15, "9º B", 4.0, "brunasouza_@gmail.com"),
("Helena Ferreia", 15, "9º B", 3.5, "helena_fofinha@hotmail.com"), 
("Gabriel Henrique", 13, "7º C", 8.0, "gabrielgames@gmail.com"),
("Fernanda Morais", 12, "6º D", 10.0, "nandinha42@hotmail.com"),
("Samuel Silva", 14, "8º C", 3.0, "samuca@gmail.com"),
("Sabrina Pereira", 12, "6º C", 7.0, "sabrina_jogos@gmail.com"),
("Renato Soares", 16, "9º A", 2.5, "soares.renato1@hotmail.com");

SELECT * FROM tb_estudantes
WHERE nota > 7.0; 

SELECT * FROM tb_estudantes
WHERE nota < 7.0;

SET SQL_SAFE_UPDATES = 0;

UPDATE tb_estudantes SET nota = 6.5 WHERE nome = "Renato Soares"; 

SET SQL_SAFE_UPDATES = 1;

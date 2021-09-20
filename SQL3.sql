CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE estudantes(
	id bigint auto_increment primary key,
	nome varchar(30) not null,
	sobrenome varchar(30) not null,
	turma varchar(30) not null,
	período int not null,
	nota decimal(10, 2) not null
);

SELECT * FROM estudantes e ;

INSERT INTO estudantes (nome, sobrenome, turma, período, nota) VALUES ("Evelyn", "Arruda", "Português", 2, 8.5);
INSERT INTO estudantes (nome, sobrenome, turma, período, nota) VALUES ("Rafaela", "Oliveira", "Matemática", 4, 6.55);
INSERT INTO estudantes (nome, sobrenome, turma, período, nota) VALUES ("Leonardo", "Rocha", "Biologia", 3, 9.55);
INSERT INTO estudantes (nome, sobrenome, turma, período, nota) VALUES ("Robert", "Kardashian", "inglês", 1, 2.55);
INSERT INTO estudantes (nome, sobrenome, turma, período, nota) VALUES ("Kim", "West", "Espanhol", 10, 4.55);
INSERT INTO estudantes (nome, sobrenome, turma, período, nota) VALUES ("Travis", "Barker", "Química", 10, 10);
INSERT INTO estudantes (nome, sobrenome, turma, período, nota) VALUES ("Kris", "Jenner", "Física", 5, 3.95);
INSERT INTO estudantes (nome, sobrenome, turma, período, nota) VALUES ("Luiz", "Da Silva", "Redação", 8, 11.55);

SELECT * FROM estudantes e where nota > 7;
SELECT * FROM estudantes e where nota < 7;

UPDATE estudantes SET nome = "Morty", sobrenome = "Smith", nota = 0.5 WHERE id = 6;
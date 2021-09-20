USE RH;

CREATE TABLE Funcionaries(
	id bigint auto_increment primary key,
	nome varchar(30) not null,
	sobrenome varchar(30) not null,
	setor varchar(20) not null,
	salario decimal not null);
    
	SELECT * FROM Funcionaries;

INSERT INTO Funcionaries(nome, sobrenome, setor, salario)
VALUES ("Rafaela", "Oliveira", "Design", 2500);

INSERT INTO Funcionaries(nome, sobrenome, setor, salario)
VALUES ("Evelyh", "Arruda", "FullStack", 5500);

INSERT INTO Funcionaries(nome, sobrenome, setor, salario)
VALUES ("Letícia", "Souza", "Frontend", 3500);

SELECT * FROM Funcionaries WHERE salario > 2000;

SELECT * FROM Funcionaries WHERE salario < 2000;

UPDATE Funcionaries SET setor = "Software", salario = 1500, sobrenome = "Junior"
	where id = 4;

SELECT * FROM Funcionaries WHERE salario > 2000;

SELECT * FROM Funcionaries WHERE salario < 2000;

UPDATE Funcionaries SET setor = "Software", salario = 1500, sobrenome = "Junior"
	where id = 4;


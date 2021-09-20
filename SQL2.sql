CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos(
	id bigint auto_increment primary key,
	tipo varchar(50) not null,
	categoria varchar(50) not null,
	preco decimal not null,
	quantidade bigint,
	marca_id varchar(50) not null);
    
    SELECT * FROM produtos;

INSERT INTO produtos (tipo, categoria, preco, quantidade, marca_id)
VALUES ("Celular", "eletrônico", 2000,00, 5, "Xiaomi");

INSERT INTO produtos (tipo, categoria, preco, quantidade, marca_id)
VALUES ("Aspirador de pó portátil", "eletrônico", 299.99, 9, "WAP");

INSERT INTO produtos (tipo, categoria, preco, quantidade, marca_id)
VALUES ("Freezer", "Eletrodoméstico", 5599.99, 2, "Electrolux");

INSERT INTO produtos (tipo, categoria, preco, quantidade, marca_id)
VALUES ("Microondas", "Eletrodoméstico", 299.99, 7, "Brastemp");

INSERT INTO produtos (tipo, categoria, preco, quantidade, marca_id) 
VALUES ("Mouse", "Eletrônico", 99.99, 6, "Logitech");

INSERT INTO produtos (tipo, categoria, preco, quantidade, marca_id) 
VALUES ("Guarda-Roupas", "Móveis", 1599.99, 2, "Itatiaia");

INSERT INTO produtos (tipo, categoria, preco, quantidade, marca_id) 
VALUES ("Edredom", "Cama, mesa e banho", 199.99, 2, "Zelo");

SELECT * FROM produtos p where preco > 500;
SELECT * FROM produtos p where preco < 500;

UPDATE produtos SET tipo = "Mouse", preco = 99.99 WHERE id = 6;
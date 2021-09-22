INSERT INTO tb_personagem(nome_personagem, nivel_personagem, faccao_personagem, idade_personagem, altura_personagem, classe_id) 
VALUES("Kim", "5", "Legião Bervely Hills", 40, 1.65, 1);
INSERT INTO tb_personagem(nome_personagem, nivel_personagem, faccao_personagem, idade_personagem, altura_personagem, classe_id) 
VALUES("Kylie", "24" "Legião Bervely Hills", 24, 1.55, 3);
INSERT INTO tb_personagem(nome_personagem, nivel_personagem, faccao_personagem, idade_personagem, altura_personagem, classe_id) 
VALUES("Kourtney", "32", "Legião Bervely Hills", 43, 1.58, 5);
INSERT INTO tb_personagem(nome_personagem, nivel_personagem, faccao_personagem, idade_personagem, altura_personagem, classe_id) 
VALUES("Klhoe", "29", "Legião Bervely Hills", 38, 1.85, 2);
INSERT INTO tb_personagem(nome_personagem, nivel_personagem, faccao_personagem, idade_personagem, altura_personagem, classe_id) 
VALUES("Robert", "45", "Legião Calabasas", 32, 1.75, 3);
INSERT INTO tb_personagem(nome_personagem, nivel_personagem, faccao_personagem, idade_personagem, altura_personagem, classe_id) 
VALUES("Kris", "15", "Legião Calabasas", 65, 1.69, 4);
INSERT INTO tb_personagem(nome_personagem, nivel_personagem, faccao_personagem, idade_personagem, altura_personagem, classe_id) 
VALUES("Kendall", "42", "Legião Calabasas", 26, 1.65, 3);
INSERT INTO tb_personagem(nome_personagem, nivel_personagem, faccao_personagem, idade_personagem, altura_personagem, classe_id) 
VALUES("Caitlyn", "32", "Legião Califórnia", 65, 1.67, 3);

UPDATE tb_classe SET ataque_base = 2000 WHERE id = 1;
UPDATE tb_classe SET ataque_base = 1200 WHERE id = 2;
UPDATE tb_classe SET ataque_base = 4500 WHERE id = 3;
UPDATE tb_classe SET ataque_base = 1400 WHERE id = 4;
UPDATE tb_classe SET ataque_base = 8500 WHERE id = 5;

SELECT tb_personagem.nome_personagem, tb_personagem.nivel_personagem, faccao_personagem
FROM tb_personagem
INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id
WHERE tb_classe.ataque_base >= 2000;

ALTER TABLE tb_classe
ADD defesa_base BIGINT;

UPDATE tb_classe SET tb_classe.defesa_base = 1000 WHERE id = 1;
UPDATE tb_classe SET tb_classe.defesa_base = 5000 WHERE id = 2;
UPDATE tb_classe SET tb_classe.defesa_base = 3500 WHERE id = 3;
UPDATE tb_classe SET tb_classe.defesa_base = 2500 WHERE id = 4;
UPDATE tb_classe SET tb_classe.defesa_base = 500  WHERE id = 5;

SELECT tb_personagem.nome_personagem, tb_personagem.nivel_personagem, faccao_personagem
FROM tb_personagem
INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id
WHERE tb_classe.defesa_base >= 1000
AND tb_classe.defesa_base <= 2000;

UPDATE tb_personagem SET tb_personagem.nome_personagem = "Travis" WHERE id = 8;

SELECT tb_personagem.nome_personagem, tb_personagem.nivel_personagem, faccao_personagem
FROM tb_personagem
WHERE tb_personagem.nome_personagem LIKE "%C%";

SELECT * FROM tb_personagem
INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id;


SELECT tb_personagem.nome_personagem, tb_classe.nome_classe, tb_personagem.faccao_personagem
FROM tb_personagem
INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id
WHERE tb_classe.nome_classe = "Cura";
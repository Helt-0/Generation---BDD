CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	classeid BIGINT AUTO_INCREMENT,
    classe VARCHAR(255) NOT NULL,
    raca VARCHAR(255) NOT NULL,
    PRIMARY KEY(classeid)
);

INSERT INTO tb_classes(classe, raca)
values("guerreiro", "orc"),
("ferreiro", "anão"),
("arqueiro", "elfo"),
("mago", "humano"),
("transmorfo","lycan");


CREATE TABLE tb_personagens(
		personagensid BIGINT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(40) NOT NULL,
        nivel INT NOT NULL,
        alturametros DECIMAL(4,2),
        alinhamentomoral VARCHAR(255) NOT NULL,
	    classeid BIGINT,
        FOREIGN KEY (classeid) REFERENCES tb_classes(classeid)
);

INSERT INTO tb_personagens(nome, nivel, alturametros, alinhamentomoral, classeid)
VALUES ("Paul", 100, 1.76, "NEUTRAL EVIL",4), 
("Mia", 45, 1.68, "LAWFUL GOOD",4),
("Liam", 20, 2.80, "CHAOTIC NEUTRAL",1),
("Emma", 75, 1.00, "CHAOTIC GOOD", 2),
("Noah", 60, 1.74, "NEUTRAL GOOD",5),
("Olivia", 90, 2.70, "LAWFUL EVIL", 1),
("Lucas", 30, 1.82, "NEUTRAL", 3),
("Sophia", 50, 1.60, "CHAOTIC EVIL", 5);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

-- Poder de ataque > 2000 se nivel > 50.
SELECT * FROM tb_personagens WHERE nivel>50;
-- 1000 < poder de defesa < 2000 se 30 < nivel < 50.
SELECT * FROM tb_personagens WHERE nivel>30 AND nivel<50;
-- Personagens que possuem "C" no nome
SELECT * FROM tb_personagens WHERE nome  LIKE "%c%";

SELECT nome, nivel, alturametros, alinhamentomoral, tb_classes.classe, tb_classes.raca
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.classeid;

SELECT nome, nivel, alturametros, alinhamentomoral, tb_classes.classe, tb_classes.raca
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.classeid
WHERE classe = "transmorfo"







CREATE DATABASE db_ensinomedio;

USE db_ensinomedio;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    idade INT NOT NULL,
    datamatricula DATE NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    PRIMARY KEY(id)	
);

INSERT INTO tb_alunos(nome, idade, datamatricula, nota)
VALUES("Pedro", "16", "2023-01-08", 6.9),
("Julio", "16", "2024-01-13", 10.0),
("Ana", "15", "2024-01-15", 9.0),
("Laura", "16", "2020-01-12", 4.0),
("Mario", "15", "2020-01-07", 6.0),
("Julia", "16", "2022-01-15", 8.0),
("Murillo", "15", "2021-01-10", 2.0),
("Bruna", "15", "2020-01-08", 10.0);

SELECT * FROM tb_alunos WHERE nota>7;

SELECT * FROM tb_alunos WHERE nota<7;

-- Laura e Murillo recuperaram a nota!!
UPDATE tb_alunos SET nota = 8.0 WHERE id = 4;

UPDATE tb_alunos SET nota = 6.5 WHERE id = 7;

SELECT*FROM tb_alunos;

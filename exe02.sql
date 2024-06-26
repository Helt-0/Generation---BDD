CREATE DATABASE db_estoque;

USE db_estoque;

CREATE TABLE tb_estoque(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    categoria VARCHAR(80) NOT NULL,
    dataingresso DATE,
	preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY(id)	
);

INSERT INTO tb_estoque(nome, categoria, dataingresso, preco)
VALUES("Jordan Delta 3 Low ", "Tênis", "2023-07-08",  664.99),
("AIR JORDAN XXXVII LOW", "Tênis", "2024-05-13", 1614.99),
("Camisa Polo Nike Dri-FIT Corinthians Victory", "Camisetas", "2024-05-15", 284.99),
("Boné Nike ACG Dri-FIT Club", "Bonés & Viseiras", "2023-05-12", 123.49),
("Shorts Nike Challenger Dri-FIT", "Shorts", "2024-02-04", 189.99),
("Camiseta Jordan Jumpman", "Camisetas", "2023-07-08",  161.49),
("Meião Nike Academy", "Meias", "2023-01-11",  56.99),
("Calça Nike Sportswear Club", "Calças & Leggings", "2023-07-20",  170.99);

SELECT * FROM tb_estoque WHERE preco>500;

SELECT * FROM tb_estoque WHERE preco<500;

-- Promoção!!
UPDATE tb_estoque SET preco = 100.00 WHERE id = 4;

SELECT*FROM tb_estoque;

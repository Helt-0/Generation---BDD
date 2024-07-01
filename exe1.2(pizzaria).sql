CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	categoria_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    formato VARCHAR(40) NOT NULL,
    preco DECIMAL(5,2)
);

INSERT INTO tb_categorias (nome, formato, preco)
VALUES("Margherita", "Grande", 90.00),
("Margherita", "Broto", 45.00),
("Pepperoni", "Grande", 110.00),
("Pepperoni", "Broto", 55.00),
("Chocolate", "Broto", 65.00),
("Chocolate com M&M's", "Broto", 68.00),
("Frango com Catupiry", "Grande", 95.00),
("Calabresa", "Grande", 80.00);


CREATE TABLE tb_pizzas(
	pizza_id BIGINT AUTO_INCREMENT PRIMARY KEY,
	tipomolho VARCHAR(255),
    base VARCHAR(255),
    complemento VARCHAR(255),
    quantidade VARCHAR(255),
    categoria_id BIGINT,
     FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);

INSERT INTO tb_pizzas(tipomolho, base, complemento, quantidade, categoria_id)
VALUES("Molho de tomate", "Mussarela", "Manjericão", "8 pedaços", 1),
("Molho de tomate", "Mussarela", "Manjericão", "4 pedaços", 2),
("Molho de tomate", "Mussarela", "Pepperoni", "8 pedaços", 3),
("Molho de tomate", "Mussarela", "Pepperoni", "4 pedaços", 4),
(NULL, "Chocolate", "Granulado","4 pedaços", 5),
(NULL, "Chocolate", "M&M's","4 pedaços", 6),
("Molho de tomate", "Frango desfiado", "Catupiry", "8 pedaços", 7), 
("Molho de tomate", "Calabressa fatiada", "Cebola fatiada", "8 pedaços", 8);

SELECT * FROM tb_categorias WHERE preco>45.00;

SELECT * FROM tb_categorias WHERE  preco > 50 AND PRECO < 100.00;

SELECT * FROM tb_categorias WHERE nome  LIKE "%M%";

-- Juntando as duas tabelas:
SELECT tipomolho, base, complemento, quantidade, tb_categorias.nome, tb_categorias.formato, tb_categorias.preco
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.categoria_id;

-- Retornando apenas pizzas doces:
SELECT tipomolho, base, complemento, quantidade, tb_categorias.nome, tb_categorias.formato, tb_categorias.preco
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.categoria_id
WHERE nome LIKE "%Chocolate%";






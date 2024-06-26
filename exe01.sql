CREATE DATABASE rh_controledados;

USE rh_controledados;

CREATE TABLE tb_funcionarios(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    cargo VARCHAR(40) NOT NULL,
    dataingresso DATE,
	salario DECIMAL(7,2) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_funcionarios(nome, cargo, dataingresso, salario)
VALUES("luana", "gerente", "2020-05-13", 10000.99),
("antonio", "supervisor(a)", "2020-05-13", 7000.00),
("ana", "desenvolvedor(a)", "2020-05-15", 4500.00),
("pedro", "desenvolvedor(a)", "2020-05-15", 3000.00),
("mario", "estagiário(a)", "2024-05-13", 1000.00);

SELECT nome, salario FROM tb_funcionarios WHERE salario>2000;

SELECT nome, salario FROM tb_funcionarios WHERE salario<2000;

-- O estagiário foi efetivado!!
UPDATE tb_funcionarios SET salario = 2200.00 WHERE id = 5;
UPDATE tb_funcionarios SET cargo = "desenvolvedor(a)" WHERE id = 5;

SELECT*FROM tb_funcionarios;
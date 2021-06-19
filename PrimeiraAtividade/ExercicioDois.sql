CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE tb_produto(
	id_produto int(5) AUTO_INCREMENT,
	nome varchar(30) NOT NULL,
    codigo int(10) NOT NULL,
    marca varchar(15) NOT NULL,
    valor decimal(10,2) NOT NULL,
    PRIMARY KEY (id_produto)
);

INSERT INTO tb_produto (nome, codigo, marca, valor) VALUES ("camiseta", "159", "Adidas", "89.90");
INSERT INTO tb_produto (nome, codigo, marca, valor) VALUES ("camiseta", "147", "Nike", "110.90");
INSERT INTO tb_produto (nome, codigo, marca, valor) VALUES ("calça", "6542", "QIX", "174.89");
INSERT INTO tb_produto (nome, codigo, marca, valor) VALUES ("tenis", "456", "Adidas", "199.90");
INSERT INTO tb_produto (nome, codigo, marca, valor) VALUES ("calça", "7410", "Brutal Kill", "180.00");
INSERT INTO tb_produto (nome, codigo, marca, valor) VALUES ("bermuda", "1257", "Brutal Kill", "98.90");
INSERT INTO tb_produto (nome, codigo, marca, valor) VALUES ("short", "9873", "Nike", "79.90");
INSERT INTO tb_produto (nome, codigo, marca, valor) VALUES ("tenis", "6542", "Jordan", "289.90");
INSERT INTO tb_produto (nome, codigo, marca, valor) VALUES ("bolsa", "462", "Louis Vuitton", "1000");

SELECT * FROM tb_produto ;

SELECT * FROM tb_produto WHERE valor > 500;
SELECT * FROM tb_produto WHERE valor < 500;


UPDATE tb_produto
 SET valor = 150
 WHERE id_produto = 6;

select * from tb_produto;
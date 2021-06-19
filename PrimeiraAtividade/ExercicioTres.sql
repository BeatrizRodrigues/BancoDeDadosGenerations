CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id_estudantes bigint(5) AUTO_INCREMENT,
	nome varchar(50) NOT NULL,
   	curso varchar(20) NOT NULL,
	telefone bigint(10) NOT NULL,
	nota DECIMAL(3,1),    
	primary key(id_estudantes)
);

INSERT INTO tb_estudantes(nome, curso, telefone, nota) VALUES ("Beatriz Rodrigues", "Java", 96847502, 75.0);
INSERT INTO tb_estudantes(nome, curso, telefone, nota) VALUES ("Izabelle Guiotti", "python", 86321470, 63.5);
INSERT INTO tb_estudantes(nome, curso, telefone, nota) VALUES ("Roberto Alves", "programacao", 97563104, 87.7);
INSERT INTO tb_estudantes(nome, curso, telefone, nota) VALUES ("Cristina Souza", "banco de dados", 99324017, 59.5);
INSERT INTO tb_estudantes(nome, curso, telefone, nota) VALUES ("Marceline Freitas", "eletrica", 98746530, 99.0);
INSERT INTO tb_estudantes(nome, curso, telefone, nota) VALUES ("Carlos Almeida", "sistemas", 9902063275, 98.0);
INSERT INTO tb_estudantes(nome, curso, telefone, nota) VALUES ("Miguel Peres", "administração", 98741365, 68.5);
INSERT INTO tb_estudantes(nome, curso, telefone, nota) VALUES ("Norma Guedes", "desenvolvimento web", 96637402, 69.0);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 70.0;

SELECT * FROM tb_estudantes WHERE nota < 70.0;

UPDATE tb_estudantes
 SET nota = 60.0
 WHERE id_estudantes = 3;

SELECT * FROM tb_estudantes;

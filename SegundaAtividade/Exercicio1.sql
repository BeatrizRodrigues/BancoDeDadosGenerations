CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id_classe INT NOT NULL AUTO_INCREMENT,
    classe VARCHAR(255) NOT NULL,
    arma VARCHAR(255) NOT NULL,
    PRIMARY KEY(id_classe)    
);

CREATE TABLE tb_personagem(
	id_personagem INT NOT NULL AUTO_INCREMENT,
    nome_personagem VARCHAR(255) NOT NULL,
    nome_jogador VARCHAR(255) NOT NULL,
    poder_ataque BIGINT(20) NOT NULL,
    poder_defesa BIGINT(20) NOT NULL,
    fk_classe INT,
    PRIMARY KEY(id_personagem),
    FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);

INSERT INTO tb_classe(classe, arma)
VALUES
("Mago", "feitiço"),
("Arqueiro", "arco"),
("Bárbaro", "martelo"),
("Paladino", "espada"),
("Atiradora", "lanca lazer");

SELECT * FROM tb_classe;

INSERT INTO tb_personagem(nome_personagem, nome_jogador, poder_ataque, poder_defesa, fk_classe)
VALUES
("Valkiria", "Beatriz", 1500, 5000, 1),
("Mortícia", "Izabelle", 3000, 4000, 2),
("Spartakus", "Bruno", 3600, 2500, 3),
("Divine", "Carlos", 7800, 3000, 4),
("Hunter", "Bianca", 6000, 2400, 2),
("Suprem", "Roberta", 4500, 6000, 4),
("Shiryu", "Bruce", 1500, 7000, 1),
("Arrow", "Felipe", 1000, 1500, 3);

INSERT INTO tb_personagem(nome_personagem, nome_jogador, poder_ataque, poder_defesa, fk_classe)
VALUES("Colf", "Babu", 2000, 5000, 3);

SELECT * FROM tb_personagem WHERE poder_ataque > 2000;

SELECT * FROM tb_personagem WHERE poder_defesa > 1000 AND poder_defesa < 2000;

SELECT * FROM tb_personagem WHERE nome_personagem LIKE 'c%';

SELECT * FROM tb_personagem 
	INNER JOIN tb_classe on tb_classe.id_classe = tb_personagem.fk_classe;
    
SELECT tb_personagem.nome_personagem FROM tb_personagem
		INNER JOIN tb_classe on tb_classe.id_classe = tb_personagem.fk_classe
        WHERE tb_classe.classe LIKE "mago"

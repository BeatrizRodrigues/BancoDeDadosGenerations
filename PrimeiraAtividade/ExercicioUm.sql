CREATE DATABASE db_servico_rh;

use db_servico_rh;

create table tb_funcionaries(
	id bigint(5) auto_increment,
    	nome varchar(50) not null,
   	cargo varchar(20) not null,
    	salario decimal(10, 2) not null,
    	telefone bigint(10) not null,    
    	primary key(id)
);

insert into tb_funcionaries(nome, cargo, salario, telefone) values ("Beatriz Rodrigues", "Desenvolvedora", 5000, 99852036);
insert into tb_funcionaries(nome, cargo, salario, telefone) values ("Izabelle Guiotti", "Analista", 5000, 99852036);
insert into tb_funcionaries(nome, cargo, salario, telefone) values ("Carlos Mendes", "Psicólogo", 4500, 99510782);
insert into tb_funcionaries(nome, cargo, salario, telefone) values ("Jonas Guedes", "Faxineiro", 2000, 98247536);
insert into tb_funcionaries(nome, cargo, salario, telefone) values ("Luciana Matos", "Estagiaria", 1500, 89257410);

select * from tb_funcionaries;

select * from tb_funcionaries where salario > 2.000;

select * from tb_funcionaries where salario < 2.000;

UPDATE tb_funcionaries
 SET salario = 2000
 WHERE id = 5;

select * from tb_funcionaries;
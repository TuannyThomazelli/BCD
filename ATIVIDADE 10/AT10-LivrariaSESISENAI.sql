create database db_LivrariaSESISENAI;
use db_livrariaSESISENAI;

CREATE TABLE tb_cliente (
id_cliente int NOT NULL PRIMARY KEY,
nome varchar(45) NOT NULL,
cpf varchar(11) NOT NULL,
rg varchar(11) NOT NULL,
email varchar(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_cliente_telefone(
id_cliente_telefone int NOT NULL PRIMARY KEY,
telefone varchar(15),
CLIENTE_id_cliente int,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);

CREATE TABLE IF NOT EXISTS tb_endereco_cliente(
id_endereco_cliente int NOT NULL PRIMARY KEY,
rua varchar(20) NOT NULL,
numero int NOT NULL,
cidade varchar (20) NOT NULL,
estado varchar (20) NOT NULL,
CLIENTE_id_cliente int,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)

);

CREATE TABLE IF NOT EXISTS tb_pedido(
id_pedido int NOT NULL PRIMARY KEY,
valor decimal (10,2),
data_hora date NOT NULL,
CLIENTE_id_cliente int,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)

);

CREATE TABLE IF NOT EXISTS tb_editora(
id_editora int NOT NULL PRIMARY KEY,
nome_editora varchar(45)NOT NULL,
nome_contato varchar (45) NOT NULL,
email varchar (45) NOT NULL,
contato varchar (45) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_livro(
id_livro int NOT NULL PRIMARY KEY,
titulo varchar(45) NOT NULL,
categoria varchar(45) NOT NULL,
isbn varchar (45) NOT NULL,
ano date NOT NULL,
valor decimal (10,2),
autor varchar(45),
EDITORA_id_editora int,
FOREIGN KEY (EDITORA_id_editora) REFERENCES tb_editora(id_editora)
);

CREATE TABLE IF NOT EXISTS tb_item_pedido(
id_item_pedido int NOT NULL PRIMARY KEY,
quantidade int NOT NULL,
valor decimal(10,2) NOT NULL,
CLIENTE_id_cliente int,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente),
LIVRO_id_livro int,
FOREIGN KEY (LIVRO_id_livro) REFERENCES tb_livro(id_livro)

);
CREATE TABLE IF NOT EXISTS tb_estoque(
id_estoque int NOT NULL,
quantidade int NOT NULL,
LIVRO_id_livro int,
FOREIGN KEY (LIVRO_id_livro) REFERENCES tb_livro(id_livro)
);
SHOW TABLES;

DROP DATABASE db_cliente_Operadora;
create database db_cliente_Operadora;
show databases;
use db_cliente_Operadora;

CREATE TABLE IF NOT EXISTS tb_cliente(
id_cliente INT PRIMARY KEY, 
nome VARCHAR(50) NOT NULL,
dt_nascimento DATE NOT NULL,
cpf VARCHAR(11) UNIQUE NOT NULL,
email VARCHAR(50) UNIQUE NOT NULL
);
SELECT * FROM tb_cliente;

CREATE TABLE IF NOT EXISTS tb_telefone(
id_telefone INT PRIMARY KEY,
ddd INT NOT NULL,
numero INT NOT NULL UNIQUE,
tipo VARCHAR(30) NOT NULL,
operadora VARCHAR(20) NOT NULL,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);
SELECT * FROM tb_telefone;
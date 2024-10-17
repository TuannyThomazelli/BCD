DROP DATABASE IF EXISTS db_livrariasenai;

CREATE DATABASE IF NOT EXISTS db_livrariasenai;

USE db_livrariasenai;

CREATE TABLE IF NOT EXISTS tb_cliente (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome_cliente VARCHAR(30) NOT NULL UNIQUE,
cpf varchar(11) NOT NULL UNIQUE,
rg varchar (11) NOT NULL UNIQUE,
email varchar(45) NOT NULL UNIQUE
);
INSERT INTO tb_cliente (id_cliente, nome_cliente, cpf, rg, email) VALUES
(DEFAULT, 'João Silva', '111111111111', '10101010101', ' joão.silva@gmail.com'),
(DEFAULT,'Maria Oliveira','2222222222','99999999999','maria.oliveira@gmail.com'),
(DEFAULT,'Pedro Santos', '33333333333', '88888888888','pedro.sanros@gamil.com'),
(DEFAULT,'Ana Costa','44444444444','77777777777' ,'ana.costa@gmail.com'),
(DEFAULT,'Carlos Ferreira','555555555555','66666666666','carlos.ferreira@gmail.com'),
(DEFAULT,'Letícia Almeida','66666666666','55555555555','leticia.almeida@gmail.com'),
(DEFAULT,'Rafael Gomes','77777777777','44444444444','rafael.gomes@gmail.com'),
(DEFAULT,'Isabela Pereira','88888888888','33333333333','isabela.pereira@gmail.com'),
(DEFAULT,'Gustavo Santos','99999999999',22222222222, 'gustavo.santos@gmail.com'),
(DEFAULT,'Camila Oliveira','10101010101','11111111111','camila.oliveira@gmail.com');


CREATE TABLE IF NOT EXISTS tb_telefone_cliente(
id_telefone_cliente INT PRIMARY KEY AUTO_INCREMENT,
telefone varchar(15) NOT NULL UNIQUE,
CLIENTE_id_cliente INT,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);
INSERT INTO tb_telefone_cliente (telefone, CLIENTE_id_cliente) VALUES
('1599875-5547',1),
('1599675-6324',2),
('15997635-4897',3),
('15993458-8685',4),
('11995475-6245',5),
('15996325-2486',6),
('15992147-6358',7),
('15997845-6215',8),
('11965486-6325',9),
('15968472-4578',10),
('15697452-9648',11),
('15784852-9653',12),
('15648978-6325',13),
('11458962-4578',14),
('11699875-9963',15);

CREATE TABLE IF NOT EXISTS tb_cliente_endereco(
id_cliente_endereco INT PRIMARY KEY AUTO_INCREMENT,
rua varchar(45) NOT NULL,
bairro varchar (45) NOT NULL,
numero INT NOT NULL,
cidade varchar(45) NOT NULL,
estado varchar (45) NOT NULL,
CLIENTE_id_cliente INT,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);
INSERT INTO tb_cliente_endereco (rua,bairro,numero,cidade,estado, CLIENTE_id_cliente) VALUES
('capitão', 'paulistano' 49 'São Paulo', 'São Paulo', 1),
('capitu', 'angelica' 48 'São Paulo', 'São Paulo', 2),
('zabra', 'leão' 45 'São Paulo', 'São Paulo', 3),
('oculos', 'puritana' 43 'São Paulo', 'São Paulo', 4),
('bentinho', 'pirada' 09 'São Paulo', 'São Paulo', 5),
('canetinha', 'penada' 49 'São Paulo', 'São Paulo', 6),
('visconde', 'canetão' 456 'São Paulo', 'São Paulo', 7),
('leão', 'carninha' 41 'São Paulo', 'São Paulo', 8),
('carne', 'caderninho' 42 'São Paulo', 'São Paulo', 9),
('pena', 'brinquinho' 46 'São Paulo', 'São Paulo', 10),
('caderno', 'garrafinha' 32 'São Paulo', 'São Paulo', 11),
('brinco', 'machado de assis' 31 'São Paulo', 'São Paulo', 12),
('garrafa', 'bala' 30 'São Paulo', 'São Paulo', 13),
('celular', 'beijos' 34 'São Paulo', 'São Paulo', 14),
('pirulito', 'blues' 36 'São Paulo', 'São Paulo', 15);

CREATE TABLE IF NOT EXISTS tb_pedido(
id_pedido INT PRIMARY KEY AUTO_INCREMENT,
ano DATE NOT NULL,
CLIENTE_id_cliente INT,
FOREIGN KEY (CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);
INSERT INTO tb_pedido (ano, CLIENTE_id_cliente) VALUES
('2020-02-10',1),
('2020-02-11',2),
('2020-02-12',3),
('2020-02-13',4),
('2020-02-14',5);

CREATE TABLE IF NOT EXISTS tb_editora(
id_editora INT PRIMARY KEY AUTO_INCREMENT,
nome_editora varchar(30) NOT NULL,
nome_contato varchar (30) NOT NULL,
email varchar (30) NOT NULL UNIQUE
);
INSERT INTO tb_editora(id_editora, nome_editora, nome_contato,email)VALUES
('arquero', 'jussara', 'jussara.silva@gmail.com'),
('letras', 'gabriela', 'gabriela.carvalho@gmail.com'),
('naufrago', 'raquel', 'raquel.dias@gmail.com'),
('arquero', 'juliana', 'juliana.almeida@gmail.com')
()

CREATE TABLE IF NOT EXISTS tb_item_pedido(

)


DROP DATABASE IF EXISTS db_senai;

CREATE DATABASE IF NOT EXISTS db_senai;

USE db_senai;

CREATE TABLE IF NOT EXISTS tb_aluno(
id_aluno INT PRIMARY KEY AUTO_INCREMENT,
nome_aluno varchar(45) NOT NULL,
nascimento DATE,
sexo ENUM('m' ,'f'),
peso DECIMAL(5,2),
altura DECIMAL (3,2),
nacionalidade varchar(20) DEFAULT 'BRASILEIRA'
);
DESC tb_aluno;

INSERT INTO tb_aluno (nome_aluno, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Larissa Manoela' , '1995-06-10' , 'f' , 56.00, 1.56, 'BRASILEIRA');

SELECT * FROM tb_aluno;

INSERT INTO tb_aluno(id_aluno, nome_aluno, nascimento, sexo, peso, altura, nacionalidade)
VALUES
(DEFAULT, 'Michael', '1984-05-04', 'm', 69.00, 1.78, 'ESTADUNIDENSE');

INSERT INTO tb_aluno VALUES 
(DEFAULT, 'Djavna', '1978-06-25', 'm', 75.00, 1.79, 'BRASIlEIRA'),
 (DEFAULT, 'Isabel', '2008-02-22', 'f', 32.00, 1.44, 'INDIGENA');

UPDATE tb_aluno -- Atualizar
SET nome_aluno = 'Medeiros'
WHERE id_aluno = 2;

UPDATE tb_aluno
SET nascimento = '2001-05-19', sexo = 'f', peso = 71.00, altura = 1.86, nacionalidade = 'GALEGA'
WHERE id_aluno = 2;

UPDATE tb_aluno
SET nome_aluno = 'Cherry'
WHERE altura = 1.86;

UPDATE tb_aluno
SET nome_aluno = 'Lady Gaga'
WHERE altura = 1.44
LIMIT 2;

DELETE FROM tb_aluno
WHERE id_aluno = 8;

SELECT * FROM tb_aluno;

TRUNCATE TABLE tb_aluno;
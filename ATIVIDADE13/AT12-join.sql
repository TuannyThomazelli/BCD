-- Criação do banco de dados
CREATE DATABASE db_academia;
USE db_academia;

-- Criação da tabela tb_alunos
CREATE TABLE tb_alunos (
    aluno_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    data_cadastro DATE NOT NULL
);

-- Criação da tabela tb_treinos
CREATE TABLE tb_treinos (
    treino_id INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT,
    nome_treino VARCHAR(100) NOT NULL,
    tipo_treino ENUM('Cardio', 'Força', 'Flexibilidade', 'Funcional') NOT NULL,
    duracao INT NOT NULL, -- Duração em minutos
    data_treino DATE NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (aluno_id) REFERENCES tb_alunos(aluno_id) ON DELETE CASCADE
);

-- Inserindo dados na tabela tb_alunos
INSERT INTO tb_alunos (nome, data_nascimento, sexo, telefone, email, data_cadastro) VALUES
('João Silva', '1990-01-10', 'M', '11912345678', 'joao.silva@example.com', '2023-01-10'),
('Maria Souza', '1992-05-22', 'F', '21987654321', 'maria.souza@example.com', '2023-02-15'),
('Carlos Pereira', '1988-07-15', 'M', '11987654321', 'carlos.pereira@example.com', '2023-03-20'),
('Ana Santos', '1995-11-30', 'F', '21912345678', 'ana.santos@example.com', '2023-04-10'),
('Pedro Oliveira', '1985-12-05', 'M', '21987651234', 'pedro.oliveira@example.com', '2023-04-20'),
('Fernanda Lima', '1993-09-12', 'F', '11911223344', 'fernanda.lima@example.com', '2023-05-10'),
('Lucas Martins', '1991-04-25', 'M', '31944556677', 'lucas.martins@example.com', '2023-05-15'),
('Juliana Almeida', '1996-08-16', 'F', '21955443322', 'juliana.almeida@example.com', '2023-06-01'),
('Rafael Dias', '1989-10-20', 'M', '21933445566', 'rafael.dias@example.com', '2023-06-20'),
('Beatriz Fernandes', '1994-02-27', 'F', '31988776655', 'beatriz.fernandes@example.com', '2023-07-05'),
('Gabriel Costa', '1990-06-18', 'M', '21966778899', 'gabriel.costa@example.com', '2023-07-15'),
('Patrícia Azevedo', '1987-03-14', 'F', '31999887766', 'patricia.azevedo@example.com', '2023-08-01'),
('Bruno Carvalho', '1985-09-22', 'M', '21933445577', 'bruno.carvalho@example.com', '2023-08-15'),
('Renata Barros', '1992-12-10', 'F', '11922334455', 'renata.barros@example.com', '2023-09-01'),
('Thiago Rodrigues', '1988-01-05', 'M', '31955667788', 'thiago.rodrigues@example.com', '2023-09-10');

-- Inserindo dados na tabela tb_treinos
INSERT INTO tb_treinos (aluno_id, nome_treino, tipo_treino, duracao, data_treino, observacoes) VALUES
(1, 'Treino A', 'Força', 60, '2023-01-12', 'Foco em peito e tríceps'),
(1, 'Treino B', 'Cardio', 45, '2023-01-14', 'Esteira e bicicleta'),
(2, 'Treino A', 'Força', 55, '2023-02-17', 'Foco em pernas e glúteos'),
(2, 'Treino C', 'Flexibilidade', 40, '2023-02-20', 'Alongamento e ioga'),
(3, 'Treino A', 'Força', 60, '2023-03-22', 'Foco em costas e bíceps'),
(3, 'Treino D', 'Cardio', 50, '2023-03-25', 'Corrida e elíptico'),
(4, 'Treino B', 'Força', 60, '2023-04-12', 'Treino completo de pernas'),
(4, 'Treino E', 'Funcional', 45, '2023-04-15', 'Circuito de funcional'),
(5, 'Treino C', 'Cardio', 45, '2023-04-22', 'Bicicleta e escada'),
(5, 'Treino A', 'Força', 55, '2023-04-24', 'Peito e ombros'),
(6, 'Treino F', 'Funcional', 50, '2023-05-12', 'Foco em agilidade e core'),
(6, 'Treino A', 'Força', 55, '2023-05-14', 'Treino de ombros e bíceps'),
(7, 'Treino B', 'Cardio', 45, '2023-05-18', 'Treino com corrida intervalada'),
(7, 'Treino D', 'Força', 60, '2023-05-20', 'Foco em pernas e glúteos'),
(8, 'Treino C', 'Funcional', 50, '2023-06-04', 'Treino para resistência'),
(8, 'Treino A', 'Flexibilidade', 40, '2023-06-05', 'Ioga e alongamentos'),
(9, 'Treino B', 'Força', 60, '2023-06-25', 'Peito e tríceps'),
(9, 'Treino E', 'Cardio', 45, '2023-06-26', 'Bicicleta e elíptico'),
(10, 'Treino A', 'Força', 60, '2023-07-07', 'Treino completo de membros superiores'),
(10, 'Treino F', 'Funcional', 55, '2023-07-09', 'Circuito para core'),
(11, 'Treino D', 'Cardio', 50, '2023-07-17', 'Corrida e corda'),
(12, 'Treino A', 'Força', 60, '2023-08-03', 'Peito e bíceps'),
(13, 'Treino B', 'Funcional', 45, '2023-08-16', 'Treino de core e resistência'),
(14, 'Treino C', 'Flexibilidade', 40, '2023-09-04', 'Alongamento avançado'),
(15, 'Treino E', 'Força', 60, '2023-09-15', 'Pernas e glúteos');
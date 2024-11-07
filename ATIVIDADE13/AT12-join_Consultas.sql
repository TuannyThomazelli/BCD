SELECT * FROM tb_treinos;
SELECT * FROM tb_alunos;
USE db_academia;

-- 1
SELECT nome, data_nascimento FROM tb_alunos;

-- 2
SELECT * FROM tb_alunos INNER JOIN tb_treinos
ON tb_alunos.aluno_id = tb_treinos.treino_id;

-- 3 
SELECT tb_alunos.nome, tb_treinos.tipo_treino 
FROM tb_alunos JOIN tb_treinos
ON tb_alunos.aluno_id = tb_treinos.aluno_id
WHERE tb_treinos.tipo_treino > 45;

-- 4
SELECT *
FROM tb_alunos LEFT JOIN tb_treinos
ON tb_alunos.aluno_id = tb_treinos.treino_id; 

-- 5
SELECT nome FROM  tb_alunos
JOIN tb_treinos
WHERE nome LIKE "%Silva%";

-- 6 
SELECT COUNT(*) AS total_força
FROM tb_treinos
WHERE tipo_treino = "Força";

-- 7 
SELECT nome, COUNT(tb_treinos.treino_id) AS Quantidade
FROM tb_alunos LEFT JOIN tb_treinos 
ON tb_alunos.aluno_id = tb_treinos.aluno_id
GROUP BY tb_alunos.nome;

-- 8
SELECT tb_alunos.nome, tb_treinos.nome_treino, tb_treinos.duracao
FROM tb_alunos INNER JOIN tb_treinos 
ON tb_alunos.aluno_id = tb_treinos.treino_id
WHERE MONTH (tb_treinos.data_treino = 7);

-- 9
SELECT tipo_treino, AVG(duracao) AS Media
FROM tb_treinos
GROUP BY tipo_treino;

-- 10 
SELECT tb_alunos.nome 
FROM tb_alunos
INNER JOIN tb_treinos 
ON tb_alunos.aluno_id = tb_treinos.aluno_id
GROUP BY tb_alunos.nome HAVING COUNT (tb_treinos.treino_id)>= 2;
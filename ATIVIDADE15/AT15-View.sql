-- ATIVIDADE 11
CREATE  VIEW vw_clientes_aniversariantes AS 
SELECT nome_cliente, telefone_cliente, MONTH (data_nascimento)
FROM  tb_cliente
WHERE MONTH (data_nascimento) >= 1 AND MONTH(data_nascimento) <=6;

SELECT * FROM vw_clientes_aniversariantes;

-- ATIVIDADE 12
CREATE VIEW vw_produtos_lucro AS 
SELECT nome_produto, categoria, (preco_venda - preco_compra) AS Lucro_bruto
FROM tb_produto
WHERE estoque >50;

SELECT * FROM vw_produtos_lucro;

-- ATIVIDADE 13
CREATE VIEW vw_clientes_mais_lucrativos AS
 SELECT tb_cliente.nome_cliente, tb_cliente.telefone_cliente, tb_cliente.cidade, tb_cliente.estado, SUM(tb_produto.preco_venda - tb_produto.preco_compra) AS lucro_total
 FROM tb_cliente
 JOIN tb_produto ON tb_produto.estoque < 50
 WHERE estado IN ('SP', 'RJ', 'MG', 'ES')
 GROUP BY tb_cliente.id_cliente;

-- ATIVIDADE 14 


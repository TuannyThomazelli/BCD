SELECT * FROM tb_vendas;

-- 1º
SELECT  id_nf, id_item, cod_produto, valor_unit FROM tb_vendas
WHERE desconto IS NULL;

-- 2º
SELECT  id_nf, id_item, cod_produto, valor_unit-(valor_unit*(desconto/100)) AS valor_vendido
FROM tb_vendas 
WHERE desconto IS NOT NULL;

-- 3º
UPDATE tb_vendas
SET desconto = 0
WHERE desconto = NULL;

-- 4º
 SELECT id_nf, id_item, cod_produto, valor_unit, quantidade * valor_unit AS valor_vendido,
valor_unit, quantidade * valor_unit AS valor_total
FROM tb_vendas;
 
 -- 5º
 SELECT id_nf, SUM(quantidade*valor_unit) AS valor_total
 FROM tb_vendas
 GROUP BY id_nf 
 ORDER BY id_nf DESC;
 
 -- 6º
 SELECT id_nf, SUM(quantidade *(valor_unit - (valor_unit*(desconto/100))))AS valor_vendido
 FROM tb_vendas
 GROUP BY id_nf
 ORDER BY valor_vendido;
 
 -- 7º
 SELECT cod_produto, quantidade FROM tb_vendas
GROUP BY cod_produto, quantidade
 ORDER BY cod_produto DESC;
 
 -- 8º
 SELECT id_nf,cod_produto COUNT(quantidade) 
 FROM tb_vendas
 WHERE quantidade > 10
 GROUP BY id_nf, cod_produto;
 
 -- 9º
 SELECT id_nf, AS valor_total FROM tb_vendas
 WHERE id_nf >500
 GROUP BY id_nf, valor_total
 ORDER BY id_nf DESC;
 
 -- 10º
SELECT cod_produto, AVG(desconto) AS MÉDIA
 FROM tb_vendas
 GROUP BY cod_produto;
 
 -- 11º 
 SELECT cod_produto, AVG(valor_unit * (desconto/100)) AS valor_medio
 FROM  tb_vendas
 GROUP BY cod_produto;
 
 -- 12º 
 SELECT id_nf, SUM(quantidade) AS qtd_itens
 FROM tb_vendas
 GROUP BY id_nf;
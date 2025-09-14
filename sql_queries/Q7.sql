-- 7 - Liste o total de ordens de compra realizadas por mês, agrupado por cliente. 
-- Considere apenas ordens de compras que foram finalizadas. Mostre o mês/ano e o número 
-- total de ordens de compra daquele mês, juntamente com o nome do cliente que as realizou.

SELECT 
    c.nome,
    TO_CHAR(o.data_compra, 'MM/YYYY')   AS mes_ano,
    COUNT(o.codigo)                     AS total_compras
FROM ORDEM_DE_COMPRA o
JOIN CLIENTE c
  ON c.codigo = o.codigo_cliente
WHERE o.status = 'FINALIZADA'
GROUP BY c.nome, c.sobrenome, TO_CHAR(o.data_compra, 'MM/YYYY')
ORDER BY c.nome, mes_ano;
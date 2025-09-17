CREATE OR REPLACE VIEW VW_CLIENTE_TOTAL_COMPRAS AS
SELECT 
    c.codigo       AS codigo_cliente,
    c.nome         AS nome_cliente,
    SUM(cp.quantidade * cp.valor_atual) AS valor_total_compras
FROM cliente c
JOIN ordem_de_compra oc 
    ON oc.codigo_cliente = c.codigo
   AND oc.status = 'FINALIZADA'
JOIN compra_possui_produto cp 
    ON cp.codigo_compra = oc.codigo
GROUP BY c.codigo, c.nome;

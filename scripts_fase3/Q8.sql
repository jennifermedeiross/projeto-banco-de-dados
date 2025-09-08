-- 8 - Calcule o valor médio das compras por cidade de entrega, considerando apenas cidades que 
-- possuem mais de 10 ordens de compra. O valor total da compra deve considerar o valor e 
-- quantidade do produto no momento da compra, o valor do frete e o desconto, caso tenha.

SELECT o.cidade, ROUND(AVG( 
    (SELECT SUM(cpp.quantidade * cpp.valor_atual) FROM compra_possui_produto cpp WHERE cpp.codigo_compra = o.codigo) +
    o.valor_frete - 
    NVL(o.desconto, 0)), 2) AS valor_medio
FROM ordem_de_compra o
GROUP BY o.cidade
HAVING COUNT(*) > 10
ORDER BY valor_medio DESC;

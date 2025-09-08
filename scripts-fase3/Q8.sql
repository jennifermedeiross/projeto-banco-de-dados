SELECT o.cidade, ROUND(AVG( (SELECT SUM(cpp.quantidade * cpp.valor_atual) FROM compra_possui_produto cpp WHERE cpp.codigo_compra = o.codigo) + o.valor_frete - NVL(o.desconto, 0)), 2) AS valor_medio
FROM ordem_de_compra o
GROUP BY o.cidade
HAVING COUNT(*) > 10
ORDER BY valor_medio DESC;

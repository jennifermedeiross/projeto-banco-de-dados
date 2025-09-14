-- 10 - Liste os produtos que foram adicionados ao carrinho mais de 5 vezes, 
-- projetando o código do produto, o nome e o total de vezes em que foi adicionado

SELECT 
    p.CODIGO,
    p.NOME,
    COUNT(h.CODIGO) AS TOTAL_ADICOES
FROM HISTORICO_PROD_ADIC_CARRINHO h
JOIN PRODUTO p 
    ON h.CODIGO_PRODUTO = p.CODIGO
GROUP BY p.CODIGO, p.NOME
HAVING COUNT(h.CODIGO) > 5;

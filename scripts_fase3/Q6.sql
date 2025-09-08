-- 6 - Recupere o nome das categorias cujo preço de compra médio dos produtos é maior que R$2.000,00.

SELECT 
    c.NOME AS CATEGORIA
FROM PRODUTO p
JOIN CATEGORIA c 
    ON p.CODIGO_CATEGORIA = c.CODIGO
GROUP BY c.NOME
HAVING AVG(p.PRECO) > 2000;

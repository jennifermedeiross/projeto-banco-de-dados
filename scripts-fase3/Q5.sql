-- 5 - Mostre os nomes dos produtos e a média das notas de avaliações deles, 
-- caso seja acima de 6, em ordens de compra realizadas durante o mês de janeiro de 2024.

SELECT p.nome, AVG(av.nota) AS media_nota
FROM PRODUTO p
JOIN COMPRA_AVALIA_PRODUTO av
  ON av.codigo_produto = p.codigo
JOIN ORDEM_DE_COMPRA o
  ON o.codigo = av.codigo_compra
WHERE o.data_compra >= DATE '2024-01-01'
  AND o.data_compra <  DATE '2024-02-01'
GROUP BY p.nome
HAVING AVG(av.nota) > 6
ORDER BY media_nota DESC;
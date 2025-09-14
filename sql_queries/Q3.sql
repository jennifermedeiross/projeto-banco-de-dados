-- 3 - Liste o código e o nome dos fornecedores que fornecem produtos da categoria ‘Material Escolar’. 
-- Além disso, inclua também os fornecedores que não fornecem nenhum produto da categoria ‘Material de Limpeza’.

SELECT DISTINCT f.CODIGO, f.NOME 
FROM FORNECEDOR f, PRODUTO p, CATEGORIA c, FORNECEDOR_FORNECE_PRODUTO ffp
WHERE f.CODIGO = ffp.CODIGO_FORNECEDOR 
  AND p.CODIGO = ffp.CODIGO_PRODUTO 
  AND p.CODIGO_CATEGORIA = c.CODIGO 
  AND c.NOME = 'Material Escolar'

UNION

SELECT f.CODIGO, f.NOME 
FROM FORNECEDOR f
MINUS
SELECT f.CODIGO, f.NOME 
FROM FORNECEDOR f, PRODUTO p, CATEGORIA c, FORNECEDOR_FORNECE_PRODUTO ffp
WHERE f.CODIGO = ffp.CODIGO_FORNECEDOR 
  AND p.CODIGO = ffp.CODIGO_PRODUTO 
  AND p.CODIGO_CATEGORIA = c.CODIGO 
  AND c.NOME = 'Material de Limpeza';

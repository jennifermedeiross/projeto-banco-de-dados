-- 2 - Mostre a menor e a maior data de ordens de compra efetuadas.

SELECT 
    MIN(DATA_COMPRA) AS MENOR_DATA,
    MAX(DATA_COMPRA) AS MAIOR_DATA
FROM ORDEM_DE_COMPRA;

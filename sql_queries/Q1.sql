-- 1 - Quais são os clientes que têm idade acima da média? Projete o código, nome e a data de nascimento.

SELECT CODIGO, NOME, DATA_NASCIMENTO
FROM CLIENTE
WHERE (FLOOR(SYSDATE - DATA_NASCIMENTO) / 365) > (SELECT  FLOOR(AVG(SYSDATE - DATA_NASCIMENTO)/365)
FROM CLIENTE);
-- 4 - Qual o nome e o e-mail das transportadoras que transportam ordens de compra com valor de frete acima de R$50,00?

SELECT DISTINCT t.NOME, t.EMAIL
FROM TRANSPORTADORA t, ORDEM_DE_COMPRA oc
WHERE oc.CODIGO_TRANSPORTADORA = t.CODIGO and
    oc.VALOR_FRETE > 50

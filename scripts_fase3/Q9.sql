-- 9 -  Mostre o nome da transportadora e um status que indica se ela já entregou pedidos ou não.
-- Se sim, o status tem valor 1 e caso contrário, tem valor 0.

SELECT t.NOME,
       CASE 
         WHEN EXISTS (
           SELECT 1
           FROM ORDEM_DE_COMPRA oc
           WHERE oc.CODIGO_TRANSPORTADORA = t.CODIGO
             AND oc.STATUS = 'FINALIZADA'
         ) 
         THEN 1 
         ELSE 0 
       END AS STATUS_ENTREGA
FROM TRANSPORTADORA t;
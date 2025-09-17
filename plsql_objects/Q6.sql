-- 6 -  Implemente uma procedure PL/SQL chamada remover_avaliacao_falsa. Esta procedure recebe o código de um produto e remove do banco todas as avaliações 
-- ligadas a ordens de compra com status diferentes de ‘FINALIZADA’.

CREATE OR REPLACE PROCEDURE remover_avaliacao_falsa
(cod_produto IN PRODUTO.CODIGO%TYPE)
IS
BEGIN
    DELETE FROM COMPRA_AVALIA_PRODUTO cap
    WHERE cap.codigo_produto = cod_produto
    AND cap.CODIGO_COMPRA IN (
        SELECT CODIGO
        FROM ORDEM_DE_COMPRA
        WHERE STATUS <> 'FINALIZADA'
    );
END;
/
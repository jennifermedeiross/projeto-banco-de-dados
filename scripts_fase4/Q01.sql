-- 1 - Implemente uma procedure PL/SQL chamada devolver_estoque.
-- Esta procedure recebe o código de uma ordem de compra e devolve todos 
-- os produtos comprados para os estoques do centro de distribuição dele,
-- ou seja, ele soma a quantidade atual no estoque com a quantidade que 
-- previamente havia sido comprada.
CREATE OR REPLACE PROCEDURE devolver_estoque(
    p_codigo_compra IN ORDEM_DE_COMPRA.codigo%TYPE) 
AS  
    v_cd_devolucao PROD_ESTOCADO_CENT_DIST.codigo_centro_distribuicao%TYPE;
BEGIN

    FOR item IN (
        SELECT cpp.codigo_produto, cpp.quantidade
        FROM COMPRA_POSSUI_PRODUTO cpp
        JOIN ORDEM_DE_COMPRA oc ON cpp.codigo_compra = oc.codigo
        WHERE cpp.codigo_compra = p_codigo_compra AND oc.status = 'FINALIZADA'
    )
    LOOP

        BEGIN

            SELECT codigo_centro_distribuicao
            INTO v_cd_devolucao
            FROM PROD_ESTOCADO_CENT_DIST
            WHERE codigo_produto = item.codigo_produto
            AND ROWNUM = 1; 

            UPDATE PROD_ESTOCADO_CENT_DIST
            SET quantidade = quantidade + item.quantidade
            WHERE codigo_produto = item.codigo_produto
            AND codigo_centro_distribuicao = v_cd_devolucao;

        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                DBMS_OUTPUT.PUT_LINE('AVISO: Produto ' || item.codigo_produto || ' não está estocado em nenhum CD. Devolução ignorada para este item.');
        END;
    END LOOP;
    COMMIT;
END devolver_estoque;
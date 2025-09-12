create OR REPLACE function get_qtd_prox_vencimentos(COD_CD NUMBER)
RETURN NUMBER
is 
DATA_VALIDADE_MAX DATE := SYSDATE + 5;
DATA_PRODUTO PRODUTO.DATA_VALIDADE%TYPE;
CONTADOR NUMBER := 0;
cursor produtos is
    select p.DATA_VALIDADE
    from produto p, PROD_ESTOCADO_CENT_DIST pecd
    where COD_CD = pecd.CODIGO_CENTRO_DISTRIBUICAO and
        pecd.CODIGO_PRODUTO = p.codigo and
        p.DATA_VALIDADE > SYSDATE;
begin
    OPEN produtos;
    LOOP
        FETCH produtos INTO DATA_PRODUTO;
        EXIT WHEN produtos%NOTFOUND;
        if DATA_PRODUTO < DATA_VALIDADE_MAX then CONTADOR:=CONTADOR+1;
        END IF;

    END LOOP;
    close produtos;

    return contador;
end;
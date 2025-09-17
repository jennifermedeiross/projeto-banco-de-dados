-- 7 - Crie um trigger para não permitir que uma ordem de compra tenha uma quantidade negativa
-- de qualquer item. Ao não permitir isso, deve ser exibida uma mensagem de erro.

CREATE OR REPLACE TRIGGER TRG_VALIDA_QUANTIDADE_ITEM
BEFORE INSERT OR UPDATE ON COMPRA_POSSUI_PRODUTO
FOR EACH ROW
BEGIN
    IF :NEW.QUANTIDADE < 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'ERRO: Quantidade não pode ser negativa.');
    END IF;
END;
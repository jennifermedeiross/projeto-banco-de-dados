-- 7 - Crie um trigger para não permitir que uma ordem de compra tenha uma quantidade negativa
-- de qualquer item. Ao não permitir isso, deve ser exibida uma mensagem de erro.

CREATE OR REPLACE TRIGGER TRG_VALIDA_QUANTIDADE_ITEM
BEFORE INSERT OR UPDATE ON ORDEM_DE_COMPRA
FOR EACH ROW
BEGIN
    IF :NEW.VALOR_FRETE < 0 or :NEW.DESCONTO < 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'ERRO: O valor do frete e do desconto não podem ser negativos.');
    END IF;
END;
CREATE OR REPLACE PROCEDURE decrementar_preco(cod_categoria IN categoria.codigo%TYPE, porcentagem IN NUMBER)
IS
BEGIN
    update produto
    set produto.preco = produto.preco * (1-porcentagem/100)
    where produto.codigo_categoria = cod_categoria;
END;

-- 5 - Crie uma view que lista os fornecedores e a quantidade de produto por categoria fornecidos por eles. A view deve exibir o nome dos fornecedores, 
-- a categoria do produto e a quantidade de produtos por categoria.

CREATE OR REPLACE VIEW V_PRODUTOS_CATEGORIA_FORNECEDORES AS
SELECT f.nome, 
       c.nome as categoria, 
       count(*) as quantidade_produto 
from fornecedor f
join fornecedor_fornece_produto ffp
    on ffp.codigo_fornecedor = f.codigo
join produto p
    on p.codigo = ffp.codigo_produto
join categoria c
    on c.codigo = p.codigo_categoria
group by f.nome, c.nome;
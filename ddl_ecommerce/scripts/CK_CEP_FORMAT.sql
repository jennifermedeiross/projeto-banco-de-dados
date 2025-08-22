ALTER TABLE cliente
ADD CONSTRAINT ck_cep_format CHECK(REGEXP_LIKE(cep, '[0-9]{5}-[0-9]{3}'));

ALTER TABLE transportadora
ADD CONSTRAINT ck_cep_format CHECK(REGEXP_LIKE(cep, '[0-9]{5}-[0-9]{3}'));

ALTER TABLE centro_distribuicao
ADD CONSTRAINT ck_cep_format CHECK(REGEXP_LIKE(cep, '[0-9]{5}-[0-9]{3}'));

ALTER TABLE fornecedor
ADD CONSTRAINT ck_cep_format CHECK(REGEXP_LIKE(cep, '[0-9]{5}-[0-9]{3}'));

CREATE TABLE telefone (
    codigo              INT PRIMARY KEY,
    codigo_cliente      INT NOT NULL,
    numero              VARCHAR(20) NOT NULL,
    CONSTRAINT fk_telefone_cliente FOREIGN KEY (codigo_cliente)
        REFERENCES cliente(codigo)
        ON DELETE CASCADE,
    CONSTRAINT ck_telefone_format
        CHECK (REGEXP_LIKE(numero, '^\([0-9]{2}\) 9[0-9]{4}-[0-9]{4}$'))
);
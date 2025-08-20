CREATE TABLE telefone (
    codigo              INT,
    codigo_cliente      INT NOT NULL,
    numero              VARCHAR(20) NOT NULL,
    CONSTRAINT pk_telefone_cliente PRIMARY KEY (codigo),
    CONSTRAINT fk_telefone_cliente FOREIGN KEY (codigo_cliente)
        REFERENCES cliente(codigo)
        ON DELETE CASCADE,
    CONSTRAINT ck_telefone_format
        CHECK (REGEXP_LIKE(numero, '^\([0-9]{2}\) 9[0-9]{4}-[0-9]{4}$'))
);
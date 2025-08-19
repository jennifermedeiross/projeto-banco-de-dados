CREATE TABLE resgate_cupom (
    codigo_cliente  INT NOT NULL,
    codigo_cupom    INT NOT NULL,
    data_resgate    DATE NOT NULL,
    CONSTRAINT fk_cod_cliente FOREIGN KEY(codigo_cliente)   
        REFERENCES cliente(codigo)
);
CREATE TABLE resgate_cupom (
    codigo_cliente  INT NOT NULL,
    codigo_cupom    INT NOT NULL,
    data_resgate    DATE NOT NULL,
    CONSTRAINT pk_resgate_cupom PRIMARY KEY (codigo_cliente, codigo_cupom)
    CONSTRAINT fk_resgate_cliente FOREIGN KEY (codigo_cliente)   
        REFERENCES cliente(codigo)
    CONSTRAINT fk_resgate_cupom FOREIGN KEY (codigo_cupom)
        REFERENCES CUPOM_DESCONTO(codigo)
);
CREATE TABLE telefone (
    codigo              INT,
    codigo_cliente      INT NOT NULL,
    numero              VARCHAR(20) NOT NULL,
    CONSTRAINT pk_telefone_cliente PRIMARY KEY (codigo),
    CONSTRAINT fk_cliente FOREIGN KEY (codigo_cliente)
        REFERENCES cliente(codigo_cliente)
        ON DELETE CASCADE
);
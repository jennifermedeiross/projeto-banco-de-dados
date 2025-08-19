CREATE TABLE telefone (
    telefone_id     INT,
    cliente_id      INT NOT NULL,
    numero          VARCHAR(20) NOT NULL,
    CONSTRAINT pk_telefone_cliente PRIMARY KEY (telefone_id),
    CONSTRAINT fk_cliente FOREIGN KEY (cliente_id)
        REFERENCES cliente(cliente_id)
        ON DELETE CASCADE
);
CREATE TABLE telefone (
    telefone_id     INT,
    cliente_id      INT NOT NULL,
    CONSTRAINT fk_cliente 
        FOREIGN KEY(cliente_id) 
        REFERENCES cliente(cliente_id)
        ON DELETE CASCADE
);
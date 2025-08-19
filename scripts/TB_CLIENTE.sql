CREATE TABLE cliente (
    codigo              INT,
    nome                VARCHAR(100) NOT NULL,
    sobrenome           VARCHAR(200),
    data_nascimento     DATE,
    sexo                VARCHAR(30),
    email               VARCHAR(100) UNIQUE,
    pontos              INT,
    cliente_indicador   INT,
    CONSTRAINT pk_cliente PRIMARY KEY(codigo)
    CONSTRAINT fk_cliente_cliente FOREIGN KEY (cliente_indicador)
        REFERENCES cliente(codigo)
);

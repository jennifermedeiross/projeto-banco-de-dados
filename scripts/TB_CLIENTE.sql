CREATE TABLE cliente (
    codigo              INT PRIMARY KEY,
    nome                VARCHAR(255) NOT NULL,
    sobrenome           VARCHAR(255) NOT NULL,
    data_nascimento     DATE NOT NULL,
    sexo                VARCHAR(30),
    email               VARCHAR(255) NOT NULL UNIQUE,
    pontos              INT,
    cliente_indicador   INT,
    rua                 VARCHAR(255) NOT NULL,
    estado              VARCHAR(255) NOT NULL,
    cep                 VARCHAR(10) NOT NULL,
    numero              VARCHAR(20) NOT NULL,
    bairro              VARCHAR(255),
);

ALTER TABLE cliente
ADD CONSTRAINT fk_cliente_cliente FOREIGN KEY (cliente_indicador)
    REFERENCES cliente(codigo)
    ON DELETE SET NULL;
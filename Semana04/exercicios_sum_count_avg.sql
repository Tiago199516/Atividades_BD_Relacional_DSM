CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL
);
 
CREATE TABLE contas (
    id_conta SERIAL PRIMARY KEY,
    id_cliente INT,
    saldo NUMERIC(10,2) DEFAULT 0,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);
 
CREATE TABLE saques (
    id_saque SERIAL PRIMARY KEY,
    id_conta INT,
    valor NUMERIC(10,2) NOT NULL,
    data_saque DATE,
    FOREIGN KEY (id_conta) REFERENCES contas(id_conta)
);


-- Inserindo clientes
INSERT INTO clientes (nome, cpf) VALUES
('Ana Beatriz Silva', '12345678901'),
('Carlos Eduardo Souza', '98765432100'),
('Mariana Oliveira Santos', '45612378955'),
('Pedro Henrique Costa', '78945612311'),
('Juliana Almeida Rocha', '32165498744'),
('Lucas Martins Ferreira', '15975345682'),
('Fernanda Gomes Lima', '75395185266'),
('Rafael Nogueira Pinto', '85214796333'),
('Camila Torres Mendes', '95175325899'),
('João Victor Ribeiro', '14725836977');

-- Inserindo contas (relacionadas aos clientes)
INSERT INTO contas (id_cliente, saldo) VALUES
(1, 1500.75),
(2, 250.00),
(3, 3500.10),
(4, 987.65),
(5, 12000.00),
(6, 780.40),
(7, 459.90),
(8, 5000.00),
(9, 222.22),
(10, 100.00);

-- Inserindo saques (relacionados às contas)
INSERT INTO saques (id_conta, valor) VALUES
(1, 200.00),
(1, 50.75),
(2, 100.00),
(3, 1500.00),
(3, 200.10),
(4, 87.65),
(5, 1000.00),
(6, 300.00),
(7, 59.90),
(8, 222.22),
(9, 50.00),
(10, 20.00),
(2, 75.50),
(4, 100.00),
(5, 2000.00),
(6, 120.40),
(7, 300.00),
(8, 1000.00),
(3, 500.00),
(1, 350.00),
(9, 100.00),
(10, 80.00),
(2, 50.00),
(5, 500.00),
(6, 200.00),
(7, 159.90),
(8, 750.00),
(4, 200.00),
(3, 100.00),
(1, 600.00);

--conta quantos clientes tem
select count(*) from clientes;

--soma valor total
select sum(saldo) from contas;

--media
select avg(valor) from saques;
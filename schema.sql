CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE contas (
    id_conta INT PRIMARY KEY,
    id_cliente INT,
    tipo_conta VARCHAR(30),
    saldo DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE cartoes (
    id_cartao INT PRIMARY KEY,
    id_conta INT,
    numero VARCHAR(20),
    validade DATE,
    limite DECIMAL(10,2),
    FOREIGN KEY (id_conta) REFERENCES contas(id_conta)
);

CREATE TABLE transacoes (
    id_transacao INT PRIMARY KEY,
    id_conta INT,
    tipo VARCHAR(30),
    valor DECIMAL(10,2),
    data_transacao DATE,
    FOREIGN KEY (id_conta) REFERENCES contas(id_conta)
);

CREATE TABLE agencias (
    id_agencia INT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100)
);

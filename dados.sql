INSERT INTO clientes VALUES
(1, 'Ana Silva', '123.456.789-00', 'ana@gmail.com', '11999990000'),
(2, 'Carlos Souza', '987.654.321-00', 'carlos@gmail.com', '11988880000');

INSERT INTO contas VALUES
(1, 1, 'Corrente', 2500.00),
(2, 2, 'Poupança', 5000.00);

INSERT INTO cartoes VALUES
(1, 1, '1111 2222 3333 4444', '2028-05-01', 3000.00),
(2, 2, '5555 6666 7777 8888', '2029-08-01', 7000.00);

INSERT INTO transacoes VALUES
(1, 1, 'Depósito', 1000.00, '2025-01-10'),
(2, 1, 'Compra', 200.00, '2025-01-11'),
(3, 2, 'Saque', 500.00, '2025-01-12');

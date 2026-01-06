-- Saldo por cliente
SELECT nome, tipo_conta, saldo
FROM clientes
JOIN contas ON clientes.id_cliente = contas.id_cliente;

-- Histórico de transações
SELECT nome, tipo, valor, data_transacao
FROM clientes
JOIN contas ON clientes.id_cliente = contas.id_cliente
JOIN transacoes ON contas.id_conta = transacoes.id_conta;

-- Total movimentado por cliente
SELECT 
    nome,
    SUM(valor) AS total_movimentado
FROM clientes
JOIN contas ON clientes.id_cliente = contas.id_cliente
JOIN transacoes ON contas.id_conta = transacoes.id_conta
GROUP BY nome;

-- Cliente que mais gastou
SELECT 
    nome,
    SUM(valor) AS total_gasto
FROM clientes
JOIN contas ON clientes.id_cliente = contas.id_cliente
JOIN transacoes ON contas.id_conta = transacoes.id_conta
WHERE tipo IN ('Compra', 'Saque')
GROUP BY nome
ORDER BY total_gasto DESC;

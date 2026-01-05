-- Saldo de todas as contas
SELECT id_conta, saldo
FROM contas;

-- Extrato de uma conta
SELECT t.id_transacao, t.tipo, t.valor, t.data_transacao
FROM transacoes t
WHERE t.id_conta = 1
ORDER BY t.data_transacao DESC;

-- Total movimentado por conta
SELECT id_conta, SUM(valor) AS total_movimentado
FROM transacoes
GROUP BY id_conta;

-- Clientes e suas contas
SELECT c.nome, ct.id_conta, ct.saldo
FROM clientes c
JOIN contas ct ON c.id_cliente = ct.id_cliente;

-- Cartões com limite acima de 2000
SELECT id_cartao, limite
FROM cartoes
WHERE limite > 2000;

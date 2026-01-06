# 💳 Projeto: Banco de Dados de Banco Digital

por **Caio Eduardo**

## 📌 Descrição
Este projeto simula a estrutura de um banco digital utilizando um banco de dados relacional em **MySQL**.  
Ele permite o cadastro e gerenciamento de clientes, contas bancárias, cartões e transações financeiras, além de consultas para análise de dados.

O objetivo é demonstrar conhecimentos práticos em **modelagem de dados, SQL e análise de informações financeiras**.

---

## 🧱 Estrutura do Banco

O banco é composto pelas seguintes tabelas:

- `clientes`
- `contas`
- `cartoes`
- `transacoes`
- `agencias`

As tabelas estão relacionadas por **chaves estrangeiras**, simulando a estrutura real de um sistema bancário.

---

## 🛠️ Tecnologias utilizadas

- MySQL 8.0  
- SQL  
- Git e GitHub  
- Modelagem de Banco de Dados Relacional  

---

## ▶️ Como executar o projeto

1. Crie o banco:
```sql
CREATE DATABASE banco_digital;
USE banco_digital;

## 📊 Exemplos de Consultas SQL

-- Saldo de cada cliente
SELECT c.nome, SUM(co.saldo) AS saldo_total
FROM clientes c
JOIN contas co ON c.id_cliente = co.id_cliente
GROUP BY c.nome;

-- Total de transações por cliente
SELECT c.nome, COUNT(t.id_transacao) AS total_transacoes
FROM clientes c
JOIN contas co ON c.id_cliente = co.id_cliente
JOIN transacoes t ON co.id_conta = t.id_conta
GROUP BY c.nome;

-- Cartões vinculados a cada cliente
SELECT c.nome, ca.numero_cartao
FROM clientes c
JOIN contas co ON c.id_cliente = co.id_cliente
JOIN cartoes ca ON co.id_conta = ca.id_conta;

Essas consultas demonstram o uso de **JOINs, agregações (SUM, COUNT) e GROUP BY**, simulando relatórios reais de um sistema bancário.


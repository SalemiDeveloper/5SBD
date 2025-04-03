SELECT cliente.cliente_nome, conta.conta_numero
FROM cliente, conta
WHERE cliente.cliente_cod = conta.cliente_cliente_cod;

SELECT cliente.cliente_nome, agencia.agencia_nome
FROM cliente, agencia;

SELECT c.cliente_nome, a.agencia_cidade
FROM cliente c, conta co, agencia a
WHERE c.cliente_cod = co.cliente_cliente_cod
  AND a.agencia_cod = co.agencia_agencia_cod;

SELECT SUM(saldo) AS saldo_total
FROM conta;

SELECT
    MAX(saldo) AS maior_saldo,
    AVG(saldo) AS media_saldo
FROM conta;

SELECT COUNT(*) AS total_contas
FROM conta;

SELECT COUNT(DISTINCT cidade) AS cidades_distintas
FROM cliente;

SELECT conta_numero, NVL(saldo, 0) AS saldo_corrigido
FROM conta;

SELECT cl.cidade, AVG(co.saldo) AS media_saldo
FROM cliente cl, conta co
WHERE cl.cliente_cod = co.cliente_cliente_cod
GROUP BY cl.cidade;

SELECT cl.cidade, COUNT(*) AS total_contas
FROM cliente cl, conta co
WHERE cl.cliente_cod = co.cliente_cliente_cod
GROUP BY cl.cidade
HAVING COUNT(*) > 3;

SELECT ag.agencia_cidade, SUM(co.saldo) AS total_saldo
FROM agencia ag, conta co
WHERE ag.agencia_cod = co.agencia_agencia_cod
GROUP BY ROLLUP(ag.agencia_cidade);

SELECT cidade FROM cliente
UNION
SELECT agencia_cidade FROM agencia;

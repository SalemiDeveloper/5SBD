SELECT UPPER(nome) FROM clientes;
SELECT INITCAP(nome) FROM clientes;
SELECT SUBSTR(nome, 1, 3) FROM clientes;
SELECT LENGTH(nome) FROM clientes;
SELECT ROUND(saldo) FROM contas;
SELECT TRUNC(saldo) FROM contas;
SELECT MOD(saldo, 1000) FROM contas;
SELECT SYSDATE FROM dual;
SELECT SYSDATE + 30 AS "Data de vencimento simulada" FROM dual;
SELECT SYSDATE - data_abertura AS "Dias desde a abertura" FROM contas;
SELECT TO_CHAR(saldo, 'L999,999.99') AS saldo_formatado FROM contas;
SELECT TO_CHAR(data_abertura, 'DD/MM/YYYY') AS data_abertura_formatada FROM contas;
SELECT NVL(saldo, 0) AS saldo_com_0_se_nulo FROM contas;
SELECT nome, NVL(cidade, 'Sem cidade') AS cidade_com_substituicao FROM clientes;
SELECT nome,
       CASE 
           WHEN cidade = 'Niterói' THEN 'Região Metropolitana'
           WHEN cidade = 'Resende' THEN 'Interior'
           ELSE 'Outra Região'
       END AS classificacao
FROM clientes;
SELECT c.nome, co.numero_conta, co.saldo
FROM clientes c
JOIN contas co ON c.codigo = co.codigo_cliente;
SELECT c.nome AS cliente, a.nome_agencia
FROM clientes c
JOIN contas co ON c.codigo = co.codigo_cliente
JOIN agencias a ON co.codigo_agencia = a.codigo;
SELECT a.nome_agencia, c.nome AS cliente
FROM agencias a
LEFT JOIN contas co ON a.codigo = co.codigo_agencia
LEFT JOIN clientes c ON co.codigo_cliente = c.codigo;




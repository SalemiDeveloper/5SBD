SELECT c.cliente_cod, c.cliente_nome, ct.conta_numero, ct.saldo
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cod
WHERE ct.saldo BETWEEN 10000 AND 20000;

SELECT c.cliente_cod, c.cliente_nome, e.emprestimo_numero, e.valor
FROM cliente c
JOIN emprestimo e ON c.cliente_cod = e.cliente_cod;

SELECT cliente_cod, cliente_nome, rua, cidade
FROM cliente
WHERE cidade = 'Niterói';

SELECT c.cliente_nome, c.cidade
FROM cliente c
WHERE c.cliente_cod IN (
    SELECT e.cliente_cod
    FROM emprestimo e
);

SELECT DISTINCT cliente.cliente_nome
FROM cliente
WHERE cliente.cliente_cod IN (
    SELECT conta.cliente_cod
    FROM conta
    WHERE conta.agencia_cod = 1
    UNION
    SELECT emprestimo.cliente_cod
    FROM emprestimo
    WHERE emprestimo.agencia_cod = 1
);

SELECT cliente.cliente_nome
FROM cliente
WHERE cliente.cliente_cod IN (
    SELECT conta.cliente_cod
    FROM conta
    WHERE conta.agencia_cod = 1
)
AND cliente.cliente_cod IN (
    SELECT emprestimo.cliente_cod
    FROM emprestimo
    WHERE emprestimo.agencia_cod = 1
);

SELECT cliente.cliente_nome
FROM cliente
WHERE cliente.cliente_cod IN (
    SELECT conta.cliente_cod
    FROM conta
    WHERE conta.agencia_cod = 1
)
AND cliente.cliente_cod NOT IN (
    SELECT emprestimo.cliente_cod
    FROM emprestimo
    WHERE emprestimo.agencia_cod = 1
);

SELECT DISTINCT agencia_cidade
FROM agencia;

SELECT agencia_cod, agencia_nome, fundos
FROM agencia
WHERE agencia_cidade = 'Rio de Janeiro';

SELECT DISTINCT a.agencia_cod, a.agencia_nome, a.agencia_cidade, a.fundos
FROM agencia a
JOIN conta c ON a.agencia_cod = c.agencia_cod
WHERE c.saldo > 100000;

SELECT c.cliente_cod, c.cliente_nome, c.rua, c.cidade
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cod
JOIN agencia a ON ct.agencia_cod = a.agencia_cod
WHERE a.agencia_nome LIKE '%Niterói%' AND a.agencia_cidade = 'Niterói' AND ct.saldo < 0;

SELECT c.cliente_cod, c.cliente_nome, c.rua, c.cidade
FROM cliente c
WHERE c.cliente_cod IN (
    SELECT ct.cliente_cod
    FROM conta ct
    WHERE ct.agencia_cod = 5
)
AND c.cliente_cod NOT IN (
    SELECT e.cliente_cod
    FROM emprestimo e
    WHERE e.agencia_cod = 5
);

SELECT agencia_cod, agencia_nome, agencia_cidade, fundos
FROM agencia
WHERE agencia_cod IN (1, 2, 3);

SELECT c.cliente_nome
FROM cliente c
WHERE c.cliente_cod IN (
    SELECT ct.cliente_cod
    FROM conta ct
    JOIN agencia a ON ct.agencia_cod = a.agencia_cod
    WHERE a.agencia_nome LIKE '%Nova Iguaçu%'
)
AND c.cliente_cod IN (
    SELECT e.cliente_cod
    FROM emprestimo e
    JOIN agencia a ON e.agencia_cod = a.agencia_cod
    WHERE a.agencia_nome LIKE '%Nova Iguaçu%'
);

SELECT agencia_cod, agencia_nome, agencia_cidade, fundos
FROM agencia
WHERE fundos > (
    SELECT MAX(fundos)
    FROM agencia
    WHERE agencia_cidade = 'Angra dos Reis'
);

SELECT agencia_cod, agencia_nome, agencia_cidade, fundos
FROM agencia
WHERE fundos > (
    SELECT MAX(fundos)
    FROM agencia
    WHERE agencia_cidade = 'Resende'
);

SELECT c.cliente_nome
FROM cliente c
WHERE EXISTS (
    SELECT 1
    FROM conta ct
    JOIN agencia a ON ct.agencia_cod = a.agencia_cod
    WHERE ct.cliente_cod = c.cliente_cod AND a.agencia_nome LIKE '%Petrópolis%'
)
AND EXISTS (
    SELECT 1
    FROM emprestimo e
    JOIN agencia a ON e.agencia_cod = a.agencia_cod
    WHERE e.cliente_cod = c.cliente_cod AND a.agencia_nome LIKE '%Petrópolis%'
);

SELECT agencia_agencia_cod, AVG(saldo) AS saldo_medio
FROM conta
GROUP BY agencia_agencia_cod;

SELECT agencia_agencia_cod, COUNT(DISTINCT cliente_cod) AS numero_depositantes
FROM conta
GROUP BY agencia_agencia_cod;

SELECT agencia_agencia_cod, MAX(saldo) AS maior_saldo
FROM conta
GROUP BY agencia_agencia_cod;

SELECT AVG(saldo) AS media_saldos
FROM conta;

DELETE FROM conta
WHERE cliente_cod IN (
    SELECT cliente_cod
    FROM cliente
    WHERE cliente_nome = 'João'
);

DELETE FROM conta
WHERE agencia_cod IN (
    SELECT agencia_cod
    FROM agencia
    WHERE agencia_cidade = 'Vitória'
);

INSERT INTO conta (conta_numero, saldo, cliente_cod, agencia_cod)
VALUES (9000, 1200, 1, 2);

INSERT INTO conta (conta_numero, saldo, cliente_cod, agencia_cod)
SELECT emprestimo_numero * 3, 200, cliente_cod, agencia_cod
FROM emprestimo
WHERE agencia_cod = (
    SELECT agencia_cod
    FROM agencia
    WHERE agencia_nome LIKE '%Macaé%'
);

UPDATE conta
SET saldo = saldo * 1.05;

UPDATE conta
SET saldo = CASE
    WHEN saldo > 10000 THEN saldo * 1.06
    ELSE saldo * 1.05
END;

UPDATE conta
SET saldo = saldo * 1.01
WHERE cliente_cod IN (
    SELECT cliente_cod
    FROM emprestimo
);

UPDATE agencia a
SET fundos = (
    SELECT SUM(c.saldo)
    FROM conta c
    WHERE c.agencia_cod = a.agencia_cod
);

CREATE VIEW agencia_cliente_view AS
SELECT a.agencia_nome, c.cliente_nome
FROM agencia a
JOIN conta ct ON a.agencia_cod = ct.agencia_cod
JOIN cliente c ON ct.cliente_cod = c.cliente_cod;

SELECT cliente_nome
FROM agencia_cliente_view
WHERE agencia_nome LIKE '%Rio de Janeiro%';

SELECT DISTINCT c.cliente_nome
FROM cliente c
JOIN conta ct ON c.cliente_cod = ct.cliente_cod
JOIN agencia a ON ct.agencia_cod = a.agencia_cod
WHERE a.fundos = (
    SELECT MAX(fundos)
    FROM agencia
);

SELECT agencia_cidade, COUNT(*) AS total_agencias
FROM agencia
GROUP BY agencia_cidade
ORDER BY agencia_cidade;

SELECT a.agencia_cidade, AVG(e.valor) AS media_emprestimos
FROM emprestimo e
JOIN agencia a ON e.agencia_cod = a.agencia_cod
GROUP BY a.agencia_cidade
ORDER BY a.agencia_cidade;

SELECT agencia_cod, agencia_nome, AVG(valor) AS media_emprestada
FROM emprestimo
GROUP BY agencia_cod, agencia_nome
HAVING AVG(valor) = (
    SELECT MAX(AVG(valor))
    FROM emprestimo
    GROUP BY agencia_cod
);

SELECT a.agencia_cod, a.agencia_nome, a.agencia_cidade
FROM agencia a
WHERE a.agencia_cidade <> 'Rio de Janeiro'
AND (
    SELECT AVG(ct.saldo)
    FROM conta ct
    WHERE ct.agencia_cod = a.agencia_cod
) > (
    SELECT MIN(AVG(ct.saldo))
    FROM conta ct
    JOIN agencia ag ON ct.agencia_cod = ag.agencia_cod
    WHERE ag.agencia_cidade = 'Duque de Caxias'
    GROUP BY ag.agencia_cod
);

SELECT agencia_agencia_cod, MIN(saldo) AS menor_saldo
FROM conta
GROUP BY agencia_agencia_cod;

SELECT cliente_cod, SUM(saldo) AS total_saldo
FROM conta
GROUP BY cliente_cod
HAVING COUNT(*) > 1;
```

Este é o código completo sem os comentários, conforme solicitado.

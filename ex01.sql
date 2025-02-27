CREATE TABLE agencia (
    agencia_cod    INTEGER NOT NULL,
    agencia_nome   VARCHAR2(40 CHAR),
    agencia_cidade VARCHAR2(40 CHAR),
    fundos         NUMBER(7, 2));

ALTER TABLE agencia ADD CONSTRAINT agencia_pk PRIMARY KEY ( agencia_cod );

INSERT ALL
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (1, 'Agencia 1 Rio de Janeiro', 'Rio de Janeiro', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (2, 'Agencia 2 Niterói', 'Niterói', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (3, 'Agencia 3 São Gonçalo', 'São Gonçalo', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (4, 'Agencia 4 Duque de Caxias', 'Duque de Caxias', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (5, 'Agencia 5 Nova Iguaçu', 'Nova Iguaçu', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (6, 'Agencia 6 Campos dos Goytacazes', 'Campos dos Goytacazes', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (7, 'Agencia 7 Petrópolis', 'Petrópolis', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (8, 'Agencia 8 Volta Redonda', 'Volta Redonda', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (9, 'Agencia 9 Macaé', 'Macaé', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (10, 'Agencia 10 Cabo Frio', 'Cabo Frio', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (11, 'Agencia 11 Angra dos Reis', 'Angra dos Reis', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (12, 'Agencia 12 Teresópolis', 'Teresópolis', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (13, 'Agencia 13 Barra Mansa', 'Barra Mansa', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (14, 'Agencia 14 Resende', 'Resende', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
    INTO agencia (agencia_cod, agencia_nome, agencia_cidade, fundos) VALUES (15, 'Agencia 15 Itaboraí', 'Itaboraí', ROUND(DBMS_RANDOM.VALUE(10000, 100000), 2))
SELECT * FROM dual;

CREATE TABLE cliente (
    cliente_cod  INTEGER NOT NULL,
    cliente_nome VARCHAR2(30 CHAR),
    rua          VARCHAR2(30 CHAR),
    cidade       VARCHAR2(40 CHAR));

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( cliente_cod );

INSERT ALL
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (1, 'Carlos Silva', 'Rua 1', 'Rio de Janeiro')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (2, 'Ana Santos', 'Rua 2', 'Niterói')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (3, 'Pedro Oliveira', 'Rua 3', 'São Gonçalo')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (4, 'Maria Souza', 'Rua 4', 'Duque de Caxias')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (5, 'José Rodrigues', 'Rua 5', 'Nova Iguaçu')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (6, 'Paula Ferreira', 'Rua 6', 'Campos dos Goytacazes')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (7, 'Lucas Almeida', 'Rua 7', 'Petrópolis')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (8, 'Fernanda Costa', 'Rua 8', 'Volta Redonda')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (9, 'Rafael Gomes', 'Rua 9', 'Macaé')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (10, 'Juliana Martins', 'Rua 10', 'Cabo Frio')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (11, 'Gabriel Ribeiro', 'Rua 11', 'Angra dos Reis')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (12, 'Mariana Carvalho', 'Rua 12', 'Teresópolis')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (13, 'Bruno Lima', 'Rua 13', 'Barra Mansa')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (14, 'Laura Araújo', 'Rua 14', 'Resende')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (15, 'Thiago Pereira', 'Rua 15', 'Itaboraí')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (16, 'Patrícia Mendes', 'Rua 16', 'Maricá')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (17, 'Felipe Barbosa', 'Rua 17', 'Itaguaí')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (18, 'Aline Teixeira', 'Rua 18', 'Nilópolis')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (19, 'Gustavo Moreira', 'Rua 19', 'Queimados')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (20, 'Camila Vieira', 'Rua 20', 'Mesquita')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (21, 'Mateus Silva', 'Rua 21', 'Rio de Janeiro')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (22, 'Beatriz Santos', 'Rua 22', 'Niterói')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (23, 'Renato Oliveira', 'Rua 23', 'São Gonçalo')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (24, 'Sofia Souza', 'Rua 24', 'Duque de Caxias')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (25, 'Diego Rodrigues', 'Rua 25', 'Nova Iguaçu')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (26, 'Mariana Ferreira', 'Rua 26', 'Campos dos Goytacazes')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (27, 'João Almeida', 'Rua 27', 'Petrópolis')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (28, 'Juliana Costa', 'Rua 28', 'Volta Redonda')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (29, 'Rafaela Gomes', 'Rua 29', 'Macaé')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (30, 'Gabriel Martins', 'Rua 30', 'Cabo Frio')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (31, 'Marcelo Ribeiro', 'Rua 31', 'Angra dos Reis')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (32, 'Ana Carvalho', 'Rua 32', 'Teresópolis')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (33, 'Carlos Lima', 'Rua 33', 'Barra Mansa')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (34, 'Patrícia Araújo', 'Rua 34', 'Resende')
    INTO cliente (cliente_cod, cliente

_nome, rua, cidade) VALUES (35, 'Thiago Pereira', 'Rua 35', 'Itaboraí')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (36, 'Carlos Santos', 'Rua 36', 'Maricá')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (37, 'Felipe Silva', 'Rua 37', 'Itaguaí')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (38, 'Aline Barbosa', 'Rua 38', 'Nilópolis')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (39, 'Gustavo Moreira', 'Rua 39', 'Queimados')
    INTO cliente (cliente_cod, cliente_nome, rua, cidade) VALUES (40, 'Camila Vieira', 'Rua 40', 'Mesquita')
SELECT * FROM dual;

CREATE TABLE conta (
    conta_numero   INTEGER NOT NULL,
    saldo          NUMBER(7, 2),
    cliente_cod    INTEGER,
    agencia_cod    INTEGER);

ALTER TABLE conta ADD CONSTRAINT conta_pk PRIMARY KEY ( conta_numero );

ALTER TABLE conta ADD CONSTRAINT conta_fk_cliente FOREIGN KEY ( cliente_cod ) REFERENCES cliente( cliente_cod );
ALTER TABLE conta ADD CONSTRAINT conta_fk_agencia FOREIGN KEY ( agencia_cod ) REFERENCES agencia( agencia_cod );

INSERT ALL
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (1, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 1, 1)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (2, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 2, 1)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (3, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 3, 1)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (4, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 4, 1)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (5, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 5, 1)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (6, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 6, 2)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (7, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 7, 2)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (8, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 8, 2)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (9, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 9, 2)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (10, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 10, 2)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (11, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 11, 3)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (12, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 12, 3)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (13, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 13, 3)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (14, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 14, 3)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (15, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 15, 3)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (16, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 16, 4)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (17, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 17, 4)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (18, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 18, 4)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (19, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 19, 4)
    INTO conta (conta_numero, saldo, cliente_cod, agencia_cod) VALUES (20, ROUND(DBMS_RANDOM.VALUE(100, 1000), 2), 20, 4)
SELECT * FROM dual;

CREATE TABLE emprestimo (
    emprestimo_numero INTEGER NOT NULL,
    valor            NUMBER(7, 2),
    cliente_cod      INTEGER,
    agencia_cod      INTEGER);

ALTER TABLE emprestimo ADD CONSTRAINT emprestimo_pk PRIMARY KEY ( emprestimo_numero );

ALTER TABLE emprestimo ADD CONSTRAINT emprestimo_fk_cliente FOREIGN KEY ( cliente_cod ) REFERENCES cliente( cliente_cod );
ALTER TABLE emprestimo ADD CONSTRAINT emprestimo_fk_agencia FOREIGN KEY ( agencia_cod ) REFERENCES agencia( agencia_cod );

INSERT ALL
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (1, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 1, 1)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (2, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 2, 1)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (3, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 3, 1)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (4, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 4, 1)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (5, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 5, 1)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (6, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 6, 2)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (7, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 7, 2)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (8, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 8, 2)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (9, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 9, 2)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (10, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 10, 2)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (11, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 11, 3)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (12, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 12, 3)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (13, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 13, 3)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (14, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 14, 3)
    INTO emprestimo (emprestimo_numero, valor, cliente_cod, agencia_cod) VALUES (15, ROUND(DBMS_RANDOM.VALUE(500, 10000), 2), 15, 3)
SELECT * FROM dual;
```

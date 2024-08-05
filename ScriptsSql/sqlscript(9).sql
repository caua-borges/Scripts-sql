REM   Script: JOIN
REM   join, inner join, left join, right join, full join

CREATE TABLE tb_departamento ( 
    id_dep_pk INT PRIMARY KEY, 
    nome VARCHAR (50), 
    qtdDeFuncionarios INT DEFAULT 0 
);

INSERT INTO tb_departamento VALUES (1,'T.I',6);

INSERT INTO tb_departamento VALUES (id_dep_pk,nome)(2,'Contabilidade');

INSERT INTO tb_departamento VALUES (id_dep_pk,nome)(4,'Financeiro');

INSERT INTO tb_departamento VALUES (1,'T.I',6);

INSERT INTO tb_departamento VALUES (id_dep_pk,nome)(3,'ADM');

INSERT INTO tb_departamento VALUES (id_dep_pk,nome)(5,'Estoque');

INSERT INTO tb_departamento  (id_dep_pk,nome) VALUES(2,'Contabilidade');

INSERT INTO tb_departamento  (id_dep_pk,nome) VALUES(3,'ADM');

INSERT INTO tb_departamento  (id_dep_pk,nome) VALUES(4,'Financeiro');

INSERT INTO tb_departamento  (id_dep_pk,nome) VALUES(5,'Estoque');

SELECT * FROM tb_departamento;

SELECT nome FROM tb_departamento;

SELECT id_dep_pk FROM tb_departamento;

SELECT nome, id_dep_pk FROM tb_departamento;

SELECT * FROM tb_departamento;

CREATE TABLE tb_funcionario ( 
    id_func_pk 		INT PRIMARY KEY, 
    nome			VARCHAR(50), 
    salario			FLOAT, 
    sexo			CHAR(1) CHECK (sexo IN ('F','M')), 
    departamento	INT, 
    CONSTRAINT 	departamento FOREIGN KEY (departamento) REFERENCES tb_departamento (id_dep_pk);

);


CREATE TABLE tb_funcionario ( 
    id_func_pk 		INT PRIMARY KEY, 
    nome			VARCHAR(50) NOT NULL, 
    salario			FLOAT, 
    sexo			CHAR(1) CHECK (sexo IN ('F','M')), 
    departamento	INT, 
    CONSTRAINT 	departamento FOREIGN KEY (departamento) REFERENCES tb_departamento (id_dep_pk) 
);

INSERT INTO tb_funcionario VALUES (2,'Bruno',98.39,'M',4);

INSERT INTO tb_funcionario VALUES (1,'Cleber',45.74,'M',4);

INSERT INTO tb_funcionario VALUES (3,'Ricardo',1.12,'M',1);

INSERT INTO tb_funcionario VALUES (4,'Bruna',85.12,'F',1);

INSERT INTO tb_funcionario VALUES (5,'Maria',678.58,'F',1);

INSERT INTO tb_funcionario VALUES (6,'Ze',63,45,'M',3);

INSERT INTO tb_funcionario VALUES (6,'Ze',63.45,'M',3);

INSERT INTO tb_funcionario (id_func_pk,nome,salario,sexo) VALUES (7,'Paula',985.72,'F');

SELECT * FROM tb_funcionario;

SELECT * FROM tb_funcionario ORDER BY nome;

SELECT * FROM tb_funcionario ORDER BY departamento;

SELECT * FROM tb_funcionario ORDER BY nome,departamento;

SELECT * FROM tb_funcionario;

SELECT * FROM tb_funcionario ORDER BY salario;

SELECT * FROM tb_funcionario ORDER BY ASC salario;

SELECT * FROM tb_funcionario ORDER BY salario ASC;

SELECT * FROM tb_funcionario ORDER BY salario DESC;

SELECT * FROM tb_funcionario ORDER BY nome DESC;

SELECT * FROM tb_funcionario ORDER BY salario,nome;

SELECT * FROM tb_funcionario ORDER BY salario ASC, nome DESC;

INSERT INTO tb_funcionario VALUES (7,'Leona',1000.40,'F',2);

INSERT INTO tb_funcionario VALUES (8,'Leona',1000.40,'F',2);

SELECT * FROM tb_funcionario;

SELECT * FROM tb_funcionario ORDER BY salario DESC;

SELECT * FROM tb_funcionario ORDER BY salario DESC, nome ASC;

SELECT * FROM tb_funcionario ORDER BY salario ASC, nome DESC;

SELECT * FROM tb_funcionario ORDER BY salario ASC, nome;

SELECT * FROM tb_funcionario ORDER BY sexo;

SELECT tb_funcionario.id_func_pk, tb_funcionario.nome,tb_departamento.nome FROM tb_funcionario LEFT JOIN tb_departamento ON tb_departamento.id_dep_pk = tb_funcionario.departamento;

SELECT tb_funcionario.id_func_pk, tb_funcionario.nome,tb_departamento.nome FROM tb_funcionario RIGHT JOIN tb_departamento ON tb_departamento.id_dep_pk = tb_funcionario.departamento;

SELECT tb_funcionario.id_func_pk, tb_funcionario.nome,tb_departamento.nome FROM tb_funcionario INNER JOIN tb_departamento ON tb_departamento.id_dep_pk = tb_funcionario.departamento;

SELECT tb_funcionario.id_func_pk, tb_funcionario.nome,tb_departamento.nome FROM tb_funcionario FULL JOIN tb_departamento ON tb_departamento.id_dep_pk = tb_funcionario.departamento;


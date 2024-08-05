REM   Script: aula 02_04
REM   Usando WHERE EXISTS & NOT EXISTS

CREATE TABLE tb_departamento ( 
    id_dep_pk PRIMARY KEY, 
    nome_dep  VARCHAR(50) NOT NULL 
);

CREATE TABLE tb_departamento ( 
    id_dep_pk INT PRIMARY KEY, 
    nome_dep  VARCHAR(50) NOT NULL 
);

CREATE TABLE tb_funcionario ( 
    id_func_pk INT PRIMARY KEY, 
    nome VARCHAR(50), 
    salario FLOAT, 
    departamento INT, 
    CONSTRAINT departamento_fk FOREIGN KEY (departamento) 
     REFERENCES tb_departamento (id_dep_pk) 
);

INSERT INTO tb_funcionario VALUES (1,"Cleber",14.96,2);

INSERT INTO tb_departamento VALUES (1,"T.I");

INSERT INTO tb_departamento VALUES (1,"T.I");

INSERT INTO tb_departamento VALUES (3,'Estoque');

INSERT INTO tb_departamento VALUES (4,'Contabilidade');

INSERT INTO tb_departamento VALUES (1,'T.I');

INSERT INTO tb_departamento VALUES (2,'ADM');

INSERT INTO tb_funcionario VALUES (1,'Cleber',14.96,2);

INSERT INTO tb_funcionario VALUES (2,'Bruno',964.74,3);

INSERT INTO tb_funcionario VALUES (5,'Zico',80.78,1);

INSERT INTO tb_funcionario VALUES (6,'Ronaldo',120.42,1);

INSERT INTO tb_funcionario VALUES (3,'Jorge',1040.50,3);

INSERT INTO tb_funcionario VALUES (4,'Adriano',200.60,2);

INSERT INTO tb_funcionario VALUES (7,'Roberto carlos',720.41,1);

INSERT INTO tb_funcionario VALUES (8,'Gaucho',340.68,2);

SELECT * FROM tb_departamento WHERE EXISTS (SELECT id_func_pk FROM tb_empregado WHERE departamento = id_dep_pk);

SELECT * FROM tb_departamento WHERE EXISTS (SELECT id_func_pk FROM tb_funcionario WHERE departamento = id_dep_pk);

UPDATE tb_funcionario SET salario = 1080.60 WHERE nome = 'jorge';

UPDATE tb_funcionario SET salario = 1080.60 WHERE nome = 'Jorge';

SELECT * FROM tb_funcionario;

ALTER TABLE tb_departamento ADD faturamento FLOAT;

SELECT * FROM tb_departamento;

SELECT * FROM tb_departamento WHERE EXISTS (SELECT id_func_pk FROM tb_funcionario WHERE departamento = id_dep_pk);

SELECT * FROM tb_departamento WHERE NOT EXISTS (SELECT id_func_pk FROM tb_funcionario WHERE departamento = id_dep_pk);


REM   Script: aula 16_04
REM   Usando o ANY & ALL 

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

DROP TABLE tb_funcionario;

CREATE TABLE tb_funcionario (  
    id_func_pk INT PRIMARY KEY,  
    nome VARCHAR(50),  
    salario FLOAT,  
    departamento INT, 
    sexo char(1)CHECK (sexo in('F','M')), 
    CONSTRAINT departamento_fk FOREIGN KEY (departamento)  
     REFERENCES tb_departamento (id_dep_pk)  
);

INSERT INTO  tb_departamento Values(1,'T.I',8);

INSERT INTO  tb_departamento(id_dep_pk, nome) Values(2,'ADM');

INSERT INTO  tb_departamento Values(3,'Financeiro',3);

INSERT INTO  tb_departamento Values(4,'Estoque',1);

INSERT INTO  tb_departamento(id_dep_pk, nome) Values(5,'oficina');

ADD TABLE tb_departamento qtdfuncionarios INT DEFAULT 0


DROP TABLE tb_departamento;

ALTER TABLE tb_departamento ADD qtdfuncionarios INT DEFAULT 0;

INSERT INTO  tb_departamento Values(1,'T.I',8);

INSERT INTO  tb_departamento(id_dep_pk, nome) Values(2,'ADM');

INSERT INTO  tb_departamento Values(3,'Financeiro',3);

INSERT INTO  tb_departamento Values(4,'Estoque',1);

INSERT INTO  tb_departamento(id_dep_pk, nome) Values(5,'oficina');

DROP tb_funcionario;

DROP TABLE tb_funcionario;

DROP  TABLE tb_departamento;

CREATE TABLE tb_departamento( 
    id_dep_pk INT PRIMARY KEY, 
    nome      varchar(30)  NOT NULL UNIQUE, 
    qtdfuncionarios INT DEFAULT 0 
     
);

INSERT INTO  tb_departamento Values(1,'T.I',8);

INSERT INTO  tb_departamento(id_dep_pk, nome) Values(2,'ADM');

INSERT INTO  tb_departamento Values(3,'Financeiro',3);

INSERT INTO  tb_departamento Values(4,'Estoque',1);

INSERT INTO  tb_departamento(id_dep_pk, nome) Values(5,'oficina');

INSERT INTO tb_funcionario VALUES(1, 'ANA', 4325.00, 'F', 1);

INSERT INTO tb_funcionario VALUES(2, 'CLEBER', 2250.00, 'M', 2);

INSERT INTO tb_funcionario VALUES(3, 'KAMILY', 1980.00, 'F', 3);

INSERT INTO tb_funcionario VALUES(4, 'FABIO', 3225.00, 'M', 1);

INSERT INTO tb_funcionario VALUES(5, 'BIANCA', 2980.00, 'F', 3);

INSERT INTO tb_funcionario VALUES(6, 'BRIAN', 3225.00, 'M', 1);

CREATE TABLE tb_funcionario( 
    id_func_pk INT PRIMARY KEY, 
    nome	VARCHAR(30)  NOT NULL, 
    salario FLOAT, 
    sexo char (1)CHECK(sexo in ('F', 'M')), 
    departamento INT, 
    CONSTRAINT departamento_fk FOREIGN KEY(departamento)REFERENCES 
    tb_funcionario(id_func_pk) 
);

INSERT INTO tb_funcionario VALUES(1, 'ANA', 4325.00, 'F', 1);

INSERT INTO tb_funcionario VALUES(2, 'CLEBER', 2250.00, 'M', 2);

INSERT INTO tb_funcionario VALUES(3, 'KAMILY', 1980.00, 'F', 3);

INSERT INTO tb_funcionario VALUES(4, 'FABIO', 3225.00, 'M', 1);

INSERT INTO tb_funcionario VALUES(5, 'BIANCA', 2980.00, 'F', 3);

INSERT INTO tb_funcionario VALUES(6, 'BRIAN', 3225.00, 'M', 1);

FAS


INSERT INTO tb_funcionario VALUES(7, 'fabio', 846.60,'M',2);

INSERT INTO tb_funcionario VALUES(8, 'mariana',233.89,'F',3);

ALTER TABLE WHERE nome = 'CLEBER' TO 'jefferson';

UPDATE tb_funcionario SET nome = 'jefferson' WHERE nome = 'CLEBER' ;

SELECT departamento, avg(salario) FROM tb_funcionario GROUP BY departamenmto;

SELECT departamento, avg(salario) FROM tb_funcionario GROUP BY departamenmto_fk;

SELECT departamento, avg(salario) FROM tb_funcionario GROUP BY departamento;

SELECT departamento, avg(salario) FROM tb_funcionario GROUP BY departamento;

SELECT departamento, ROUND (avg(salario)) FROM tb_funcionario GROUP BY departamento;

SELECT departamento, count (*) FROM tb_funcionario GROUP BY departamento;

SELECT salario FROM tb_funcionario WHERE departamento = 1;

SELECT * FROM tb_funcionario WHERE salario < ALL (SELECT salario FROM tb_funcionario WHERE departamento = 1);

SELECT salario FROM tb_funcionario WHERE departamento = 1;

SELECT * FROM tb_funcionario WHERE salario < ALL (SELECT salario FROM tb_funcionario WHERE departamento = 1);

SELECT * FROM tb_funcionario WHERE salario < ALL (SELECT salario FROM tb_funcionario WHERE departamento = 2);

SELECT salario FROM tb_funcionario WHERE departamento = 2;

SELECT * FROM tb_funcionario WHERE salario < ALL (SELECT salario FROM tb_funcionario WHERE departamento = 2);

SELECT salario FROM tb_funcionario WHERE departamento = 3;

SELECT * FROM tb_funcionario WHERE salario < ALL (SELECT salario FROM tb_funcionario WHERE departamento = 3);

SELECT * FROM tb_funcionario WHERE salario < ANY (SELECT salario FROM tb_funcionario WHERE departamento = 1);

SELECT salario FROM tb_funcionario WHERE departamento = 1;

SELECT * FROM tb_funcionario WHERE salario < ANY (SELECT salario FROM tb_funcionario WHERE departamento = 1);

SELECT * FROM tb_funcionario WHERE salario < ANY (SELECT salario FROM tb_funcionario WHERE departamento = 1);

SELECT salario FROM tb_funcionario WHERE departamento = 1;

SELECT * FROM tb_funcionario WHERE salario < ANY (SELECT salario FROM tb_funcionario WHERE departamento = 1);

SELECT * FROM tb_funcionario WHERE salario > ANY (SELECT salario FROM tb_funcionario WHERE departamento = 1);

SELECT * FROM tb_funcionario WHERE salario > ALL (SELECT salario FROM tb_funcionario WHERE departamento = 1);

SELECT * FROM tb_funcionario WHERE salario > ALL (SELECT salario FROM tb_funcionario WHERE departamento = 1);

INSERT INTO tb_funcionario VALUES(9, 'fabiana', 5544.90,'F',3);

SELECT * FROM tb_funcionario WHERE salario > ALL (SELECT salario FROM tb_funcionario WHERE departamento = 1);

UPDATE tb_funcionario SET sexo = UPPER (sexo);

UPDATE tb_funcionario SET sexo = LOWER (sexo);

UPDATE tb_funcionario SET sexo = LOWER (sexo);

UPDATE tb_funcionario SET sexo = UPPER (sexo);

UPDATE tb_funcionario SET sexo = LOWER (sexo);

ALTER TABLE tb_funcionario MODIFY (sexo  CHAR(CHECK (IN('f','m','F','M'))));

ALTER TABLE tb_funcionario MODIFY (sexo  CHAR (1) CHECK (sexo IN('f','m','F','M') )));

ALTER TABLE tb_funcionario MODIFY (sexo  CHAR (1) CHECK (sexo in('f','m','F','M') )));

ALTER TABLE tb_funcionario MODIFY (sexo  CHAR (1) CHECK (sexo IN('f','m','F','M') ));


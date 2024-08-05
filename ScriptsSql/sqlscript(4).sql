REM   Script: aula 12_03_2024
REM   Usando e alterando tabelas com query

CREATE TABLE tb_departamento( 
	id_dep_pk		INT PRIMARY KEY, 
    nome			VARCHAR(30) NOT NULL UNIQUE, 
	qtFuncionarios  INT DEFAULT 0 
);

INSERT INTO tb_departamento VALUES (1,'T.I',8);

INSERT INTO tb_departamento(id_dep_pk,nome) VALUES (2,'ADM');

INSERT INTO tb_departamento VALUES (3,'Financeiro',3);

INSERT INTO tb_departamento VALUES (4,'Estoque',1);

INSERT INTO tb_departamento(id_dep_pk,nome) VALUES (5,'Oficina');

CREATE TABLE tb_funcionarios( 
	id_func_pk	 INT PRIMARY KEY, 
    nome		 VARCHAR(30) NOT NULL UNIQUE, 
	salario		 FLOAT, 
	sexo		 CHAR(1) CHECK(sexo in('F','M')), 
    departamento INT 
	CONSTRAINT departamento_fk FOREIGN KEY departamento REFERENCES 
    tb_funcionario(id_func_pk)    
);

CREATE TABLE tb_funcionarios( 
	id_func_pk	 INT PRIMARY KEY, 
    nome		 VARCHAR(30) NOT NULL UNIQUE, 
	salario		 FLOAT, 
	sexo		 CHAR(1) CHECK(sexo in('F','M')), 
    departamento INT 
	CONSTRAINT departamento_fk FOREIGN KEY (departamento) REFERENCES 
    tb_funcionario(id_func_pk)    
);

CREATE TABLE tb_funcionarios( 
	id_func_pk	 INT PRIMARY KEY, 
    nome		 VARCHAR(30) NOT NULL UNIQUE, 
	salario		 FLOAT, 
	sexo		 CHAR(1) CHECK(sexo in('F','M')), 
    departamento INT, 
	CONSTRAINT departamento_fk FOREIGN KEY (departamento) REFERENCES 
    tb_funcionario(id_func_pk)    
);

CREATE TABLE tb_funcionarios( 
	id_func_pk	 INT PRIMARY KEY, 
    nome		 VARCHAR(30) NOT NULL UNIQUE, 
	salario		 FLOAT, 
	sexo		 CHAR(1) CHECK(sexo in('F','M')), 
    departamento INT, 
	CONSTRAINT departamento_fk FOREIGN KEY (departamento) REFERENCES 
    tb_funcionario(id_func_pk)    
);

CREATE TABLE tb_funcionarios( 
	id_func_pk	 INT PRIMARY KEY, 
    nome		 VARCHAR(30) NOT NULL, 
	salario		 FLOAT, 
	sexo		 CHAR(1) CHECK(sexo in('F','M')), 
    departamento INT, 
	CONSTRAINT departamento_fk FOREIGN KEY (departamento) REFERENCES 
    tb_funcionarios(id_func_pk)    
);

INSERT INTO tb_funcionarios VALUES(1,'BELO',4.235,'M',1);

INSERT INTO tb_funcionarios VALUES(1,'salgadinho',2.345,'MM',1);

INSERT INTO tb_funcionarios VALUES(1,'salgadinho',2.345,'M',1);

INSERT INTO tb_funcionarios VALUES(2,'salgadinho',2.345,'M',1);

INSERT INTO tb_funcionarios VALUES(3,'Calourinho',946.321,'F',2);

INSERT INTO tb_funcionarios VALUES(2,'salgadinho',2.345,'M',1);

INSERT INTO tb_funcionarios VALUES(2,'salgadinho',2.345,'M',1);

INSERT INTO tb_funcionarios VALUES(4,'Roger',24.842,'M',3);

INSERT INTO tb_funcionarios VALUES(5,'Marcia',12.884,'M',4);

INSERT INTO tb_funcionarios VALUES(2,'salgadinho',2.345,'M',5);

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios ORDER BY id;

SELECT * FROM tb_funcionarios ORDER BY id_func_pk;

INSERT INTO tb_funcionarios VALUES(6,'Josefa Santos',1.13,'F',5);

SELECT * FROM tb_funcionarios ORDER BY id_func_pk;

ALTER TABLE tb_departamento ADD(faturamento FLOAT);

SELECT * FROM tb_departamento;

ALTER TABLE tb_departamento MODIFY (faturamento NUMBER(4));

SELECT * FROM tb_departamento;

ALTER TABLE tb_departamento DROP (faturamento);

SELECT * FROM tb_departamento;

ALTER TABLE tb_departamento ADD (faturamento FLOAT DEFAULT 0);

SELECT * FROM tb_departamento;

ALTER TABLE tb_departamento RENAME COUMN faturamento to x;

ALTER TABLE tb_departamento RENAME COlUMN faturamento to x;

SELECT * FROM tb_departamento;

SELECT id_dep_pk "id" FROM tb_departamento;

SELECT * FROM tb_funcionarios WHERE salario > 20 ORDER BY salario;

SELECT * FROM tb_funcionarios WHERE salario > 20 ORDER BY salario ASC;

SELECT * FROM tb_funcionarios WHERE sexo = 'F' ;

SELECT * FROM tb_funcionarios WHERE sexo = 'F' AND salario > 20;

SELECT * FROM tb_funcionario WHERE salario > (SELECT AVG(salario) FROM tb_funcionario);

SELECT * FROM tb_funcionarios WHERE salario > (SELECT AVG(salario) FROM tb_funcionario);

SELECT * FROM tb_funcionarios WHERE salario > (SELECT AVG(salario) FROM tb_funcionarios);

SELECT * FROM tb_funcionarios WHERE sexo = 'F' AND salario > (SELECT AVG(salario) FROM tb_funcionarios);

SELECT * FROM tb_funcionarios WHERE salario > (SELECT AVG(salario) FROM tb_empregado WHERE sexo = 'F');

SELECT * FROM tb_funcionarios WHERE salario > (SELECT AVG(salario) FROM tb_funcionarios WHERE sexo = 'F');

SELECT * FROM tb_funcionarios WHERE sexo = 'F' AND salario > (SELECT AVG(salario) FROM tb_funcionarios);

SELECT * FROM tb_funcionarios WHERE id_func_pk = (SELECT id_dep_pk FROM tb_departamento WHERE nome = 'T.I');


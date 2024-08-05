REM   Script: aula 26/03/2024
REM   aprendendo sequencia e praticando com group by

CREATE TABLE tb_departamento( 
    id_dep_pk	INT PRIMARY KEY, 
    nome		VARCHAR(30) NOT NULL  
);

CREATE TABLE tb_funcionario( 
	id_func_pk	PRIMARY KEY, 
	nome		VARCHAR(30), 
    idade		INT, 
    cargo		VARCHAR, 
    salario		FLOAT, 
    departamento INT, 
    CONSTRAINT fk_departamento FOREIGN KEY(departamento) REFERENCES  
    tb_departamento(id_dep_pk) 
);

CREATE TABLE tb_funcionario( 
	id_func_pk	PRIMARY KEY, 
	nome		VARCHAR(30), 
    idade		INT, 
    cargo		VARCHAR, 
    salario		FLOAT, 
    departamento INT, 
    CONSTRAINT fk_departamento FOREIGN KEY(departamento) REFERENCES  
    tb_departamento(id_dep_pk) 
);

CREATE TABLE tb_funcionario( 
	id_func_pk	INT PRIMARY KEY, 
	nome		VARCHAR(30), 
    idade		INT, 
    cargo		VARCHAR, 
    salario		FLOAT, 
    departamento INT, 
    CONSTRAINT fk_departamento FOREIGN KEY(departamento) REFERENCES  
    tb_departamento(id_dep_pk) 
);

CREATE TABLE tb_funcionario( 
	id_func_pk	INT PRIMARY KEY, 
	nome		VARCHAR(30), 
    idade		INT, 
    cargo		VARCHAR, 
    salario		FLOAT, 
    departamento INT, 
    CONSTRAINT fk_departamento FOREIGN KEY(departamento) REFERENCES  
    tb_departamento(id_dep_pk) 
);

CREATE TABLE tb_funcionario( 
	id_func_pk	INT PRIMARY KEY, 
	nome		VARCHAR(30), 
    idade		INT, 
    cargo		VARCHAR, 
    salario		FLOAT, 
    departamento INT, 
    CONSTRAINT fk_departamento FOREIGN KEY(departamento) REFERENCES  
    tb_departamento(id_dep_pk) 
);

CREATE TABLE tb_funcionario( 
	id_func_pk	INT PRIMARY KEY, 
	nome		VARCHAR(30), 
    idade		INT, 
    cargo		VARCHAR(30), 
    salario		FLOAT, 
    departamento INT, 
    CONSTRAINT fk_departamento FOREIGN KEY(departamento) REFERENCES  
    tb_departamento(id_dep_pk) 
);

CREATE SEQUENCE id_dep 
		START WITH 1 
		INCREMENT BY 1 
;

INSERT INTO tb_departamento VALUES (id_dep.NEXTVAL, 'T.I');

INSERT INTO tb_departamento VALUES (id_dep.NEXTVAL, 'ADM');

INSERT INTO tb_departamento VALUES (id_dep.NEXTVAL, 'Estoque');

INSERT INTO tb_departamento VALUES (id_dep.NEXTVAL, 'ADM');

INSERT INTO tb_departamento VALUES (id_dep.NEXTVAL, 'Estoque');

SELECT * FROM tb_departamento;

SELECT * FROM tb_departamento 
;

DELETE FROM tb_departamento WHERE id_dep_pk = 21 
;

CREATE TABLE tb_departamento( 
    id_dep_pk	INT PRIMARY KEY, 
    nome		VARCHAR(30) NOT NULL  
);

	CREATE SEQUENCE id_dep 
		START WITH 1 
		INCREMENT BY 1 
 
CREATE TABLE tb_funcionario( 
	id_func_pk	INT PRIMARY KEY, 
	nome		VARCHAR(30), 
    idade		INT, 
    cargo		VARCHAR(30), 
    salario		FLOAT, 
    departamento INT, 
    CONSTRAINT fk_departamento FOREIGN KEY(departamento) REFERENCES  
    tb_departamento(id_dep_pk) 
) 
 
INSERT INTO tb_departamento VALUES (id_dep.NEXTVAL, 'T.I');

INSERT INTO tb_departamento VALUES (id_dep.NEXTVAL, 'ADM');

INSERT INTO tb_departamento VALUES (id_dep.NEXTVAL, 'Estoque');

SELECT * FROM tb_departamento 
DELETE FROM tb_departamento WHERE id_dep_pk = 22 
;

DELETE FROM tb_departamento WHERE id_dep_pk = 22 
;

SELECT * FROM tb_departamento 
;

DELETE FROM tb_departamento WHERE id_dep_pk = 4 
;

DELETE FROM tb_departamento WHERE id_dep_pk = 5 
;

SELECT * FROM tb_departamento 
;

CREATE SEQUENCE id_func 
		START WITH 1 
		INCREMENT BY 1 
;

drop table tb_funcionario;

CREATE TABLE tb_funcionario( 
	id_func_pk	INT PRIMARY KEY, 
	nome		VARCHAR(30), 
    idade		INT, 
    sexo		CHAR(1) CHECK (sexo IN('F','M')), 
    cargo		VARCHAR(30), 
    salario		FLOAT, 
    departamento INT, 
    CONSTRAINT fk_departamento FOREIGN KEY(departamento) REFERENCES  
    tb_departamento(id_dep_pk) 
) 
;

SELECT * FROM tb_funcionario;

INSERT INTO tb_funcionario VALUES(id_func_pk.NEXTVAL, 'Fausto',91,'M','motoboy',25.75,3) 
;

INSERT INTO tb_funcionario VALUES(id_func.NEXTVAL, 'Fausto',91,'M','motoboy',25.75,3) 
;

INSERT INTO tb_funcionario VALUES(id_func.NEXTVAL, 'Rodrigo faro',48,'M','cameraman',122,70,1) 
;

INSERT INTO tb_funcionario VALUES(id_func.NEXTVAL, 'Rodrigo faro',48,'M','cameraman',122.70,1) 
;

INSERT INTO tb_funcionario VALUES(id_func.NEXTVAL, 'Luciano crack',54,'M','Estágiario',300.40,2);

INSERT INTO tb_funcionario VALUES(id_func.NEXTVAL, 'Silvio santos',104,'M','Patrão',1000.87,4) 
;

INSERT INTO tb_funcionario VALUES(id_func.NEXTVAL, 'Silvio santos',104,'M','Patrão',1000.87,3) 
;

INSERT INTO tb_funcionario VALUES(id_func.NEXTVAL, 'Anitta',40,'F','Secretária',60.90,1) 
;

INSERT INTO tb_funcionario VALUES(id_func.NEXTVAL, 'Ludmilla',54,'F','Recepsionista',121.52,2);

SELECT * FROM tb_funcionario;

SELECT * FROM tb_departamento;

SELECT departamento FROM tb_funcionarios;

SELECT departamento FROM tb_funcionario;

SELECT departamento FROM tb_funcionario GROUP BY departamento;

SELECT departamento, AVG(salario) FROM tb_funcionario GROUP BY departamento;

SELECT sexo,AVG(salario) FROM tb_funcionario GROUP BY departamento;

SELECT departamento, AVG(salario) FROM tb_funcionario GROUP BY sexo;

SELECT departamento, AVG(salario) FROM tb_funcionario GROUP BY departamento;

SELECT sexo, AVG(salario) FROM tb_funcionario GROUP BY departamento;

SELECT sexo, AVG(salario) FROM tb_funcionario GROUP BY sexo;

INSERT INTO tb_funcionario VALUES(id_func.NEXTVAL, 'Luiza',33,'F','Estagiária',984.92,2) 
;

SELECT sexo, AVG(salario) FROM tb_funcionario GROUP BY sexo;

DELETE FROM tb_funcionario WHERE nome = 'Luiza';

SELECT sexo, AVG(salario) FROM tb_funcionario GROUP BY sexo;

SELECT sexo, AVG(salario) FROM tb_funcionario GROUP BY sexo HAVING avg(salario) > 500;


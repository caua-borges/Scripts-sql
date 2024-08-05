REM   Script: aula 20_02_2024
REM   Aula 20/02/2024 SELECT FROM & WHERE;

CREATE TABLE tb_departamento( 
    id_dep_pk INT PRIMARY KEY, 
    nome VARCHAR(40) NOT NULL UNIQUE 
);

INSERT INTO tb_departamento VALUES(1, 'T.I');

INSERT INTO tb_departamento(id_dep_pk)VALUES (2);

INSERT INTO tb_departamento(id_dep_pk)VALUES (2, 'T.I');

CREATE TABLE tb_departamento( 
    id_dep_pk INT PRIMARY KEY, 
    nome VARCHAR(40) NOT NULL UNIQUE 
);

INSERT INTO tb_departamento VALUES(1, 'T.I');

INSERT INTO tb_departamento(id_dep_pk, nome)VALUES (2, 'T.I');

INSERT INTO tb_departamento(id_dep_pk, nome)VALUES (2, 'T.I');

INSERT INTO tb_departamento(id_dep_pk, nome)VALUES (2, 'ADM');

INSERT INTO tb_departamento VALUES (3, 'Contabilidade');

INSERT INTO tb_departamento VALUES (4, 'Oficina');

INSERT INTO tb_departamento VALUES (5, 'Estoque');

CREATE TABLE tb_empregado( 
    id_emp_pk INT PRIMARY KEY, 
    nome	VARCHAR(50);

    idade 	INT, 


    salario	FLOAT, 


    email	VARCHAR(60), 


 	departamento INT, 


    CONSTRAINT departamento_fk FOREIGN KEY(departamento) 


    REFERENCES tb_departamento(id_dep_pk)  


)


CREATE TABLE tb_empregado( 
    id_emp_pk INT PRIMARY KEY, 
    nome	VARCHAR(50);

    idade 	INT, 


    salario	FLOAT, 


    email	VARCHAR(60), 


 	departamento INT, 


    CONSTRAINT departamento_fk FOREIGN KEY(departamento) 


    REFERENCES tb_departamento(id_dep_pk)):


CREATE TABLE tb_empregado( 
    id_emp_pk INT PRIMARY KEY, 
    nome	VARCHAR(50);

    idade 	INT, 


    salario	FLOAT, 


    email	VARCHAR(60), 


 	departamento INT, 


    CONSTRAINT departamento_fk FOREIGN KEY(departamento) 


    REFERENCES tb_departamento(id_dep_pk)  


);


CREATE TABLE tb_empregado() 
    id_emp_pk INT PRIMARY KEY, 
    nome	VARCHAR(50);

    idade 	INT, 


    salario	FLOAT, 


    email	VARCHAR(60), 


 	departamento INT, 


    CONSTRAINT departamento_fk FOREIGN KEY(departamento); 


    REFERENCES tb_departamento(id_dep_pk);


CREATE TABLE tb_empregado( 
    id_emp_pk INT PRIMARY KEY, 
    nome	VARCHAR(50), 
    idade 	INT, 
    salario	FLOAT, 
    email	VARCHAR(60), 
 	departamento INT, 
    CONSTRAINT departamento_fk FOREIGN KEY(departamento) 
    REFERENCES tb_departamento(id_dep_pk) 
);

INSERT INTO tb_empregado     
	INSERT INTO tb_empregado VALUES (1, 'Cleber', 18, 945.75, 'cleber@gmail.com', 1);

	INSERT INTO tb_empregado VALUES (2, 'bruna', 20, 995.35, 'bruna@yahoo.com', 2);

	INSERT INTO tb_empregado VALUES (3, 'Zé', 65, 352.75, 'ze@bol.com', 4);

INSERT INTO tb_empregado     
	VALUES tb_empregado VALUES (1, 'Cleber', 18, 945.75, 'cleber@gmail.com', 1);

	INSERT INTO tb_empregado VALUES (2, 'bruna', 20, 995.35, 'bruna@yahoo.com', 2);

	INSERT INTO tb_empregado VALUES (3, 'Zé', 65, 352.75, 'ze@bol.com', 4);

	INSERT INTO tb_empregado VALUES (1, 'Cleber', 18, 945.75, 'cleber@gmail.com', 1);

	INSERT INTO tb_empregado VALUES (2, 'bruna', 20, 995.35, 'bruna@yahoo.com', 2);

	INSERT INTO tb_empregado VALUES (3, 'Zé', 65, 352.75, 'ze@bol.com', 4);

	SELECT*FROM tb_empregado;

	SELECT*FROM tb_departamento;

SELECT*FROM tb_empregado;

SELECT nome,idade FROM tm_empregado;

SELECT nome, idade FROM tb_empregado;

SELECT*FROM tb_empregado WHERE nome = 'Zé';

SELECT*FROM tb_empregado WHERE salario > 400;

CREATE TABLE tb_departamento( 
    id_dep_pk INT PRIMARY KEY, 
    nome VARCHAR(40) NOT NULL UNIQUE 
);

INSERT INTO tb_departamento VALUES(1, 'T.I');

INSERT INTO tb_departamento(id_dep_pk, nome)VALUES (2, 'ADM');

INSERT INTO tb_departamento VALUES (3, 'Contabilidade');

INSERT INTO tb_departamento VALUES (4, 'Oficina');

INSERT INTO tb_departamento VALUES (5, 'Estoque');

CREATE TABLE tb_empregado( 
    id_emp_pk INT PRIMARY KEY, 
    nome	VARCHAR(50), 
    idade 	INT, 
    salario	FLOAT, 
    email	VARCHAR(60), 
 	departamento INT, 
    CONSTRAINT departamento_fk FOREIGN KEY(departamento) 
    REFERENCES tb_departamento(id_dep_pk));

	INSERT INTO tb_empregado VALUES (1, 'Cleber', 18, 945.75, 'cleber@gmail.com', 1);

	INSERT INTO tb_empregado VALUES (2, 'bruna', 20, 995.35, 'bruna@yahoo.com', 2);

	INSERT INTO tb_empregado VALUES (3, 'Zé', 65, 352.75, 'ze@bol.com', 4);

	SELECT*FROM tb_empregado;

	SELECT*FROM tb_departamento;

	SELECT nome, idade FROM tb_empregado;

	SELECT*FROM tb_empregado WHERE nome = 'Zé' 
	SELECT*FROM tb_empregado WHERE salario > 400;

	SELECT*FROM tb_empregado WHERE salario < 400;

SELECT*FROM tb_empregado WHERE salario < 400;

SELECT*FROM tb_empregado WHERE salario <> 400;

SELECT*FROM tb_empregado WHERE salario <> 400;

SELECT*FROM tb_empregado WHERE salario <> 400;

SELECT salario, salario/2 FROM tb_empregado;

SELECT round(salario/2, 1) FROM tb_empregado;

SELECT salario/2, round(salario/2, 1) FROM tb_empregado;

SELECT salario/2, round(salario*23/100, 1) FROM tb_empregado;

SELECT salario/2, round(salario*2, 1) FROM tb_empregado;

SELECT salario/2, round(salario/2, 1) FROM tb_empregado;

SELECT salario, TRUNC(salario) FROM tb_empregado;

SELECT salario, POWER(salario,2) FROM tb_empregado;

	SELECT salario, POWER(salario,8) FROM tb_empregado;

CREATE TABLE tb_departamento( 
    id_dep_pk INT PRIMARY KEY, 
    nome VARCHAR(40) NOT NULL UNIQUE 
);

INSERT INTO tb_departamento VALUES(1, 'T.I');

INSERT INTO tb_departamento(id_dep_pk, nome)VALUES (2, 'ADM');

INSERT INTO tb_departamento VALUES (3, 'Contabilidade');

INSERT INTO tb_departamento VALUES (4, 'Oficina');

INSERT INTO tb_departamento VALUES (5, 'Estoque');

CREATE TABLE tb_empregado( 
    id_emp_pk INT PRIMARY KEY, 
    nome	VARCHAR(50), 
    idade 	INT, 
    salario	FLOAT, 
    email	VARCHAR(60), 
 	departamento INT, 
    CONSTRAINT departamento_fk FOREIGN KEY(departamento) 
    REFERENCES tb_departamento(id_dep_pk));

	INSERT INTO tb_empregado VALUES (1, 'Cleber', 18, 945.75, 'cleber@gmail.com', 1);

	INSERT INTO tb_empregado VALUES (2, 'bruna', 20, 995.35, 'bruna@yahoo.com', 2);

	INSERT INTO tb_empregado VALUES (3, 'Zé', 65, 352.75, 'ze@bol.com', 4);

	SELECT*FROM tb_empregado;

	SELECT*FROM tb_departamento;

	SELECT nome, idade FROM tb_empregado;

	SELECT*FROM tb_empregado WHERE nome = 'Zé' 
	SELECT*FROM tb_empregado WHERE salario > 400;

	SELECT*FROM tb_empregado WHERE salario < 400;

	SELECT*FROM tb_empregado WHERE salario <> 400;

	SELECT salario, salario/2 FROM tb_empregado;

	SELECT salario/2, round(salario/2, 1) FROM tb_empregado;

	SELECT salario, TRUNC(salario) FROM tb_empregado;

	SELECT salario, POWER(salario,2) FROM tb_empregado 
	;

	SELECT salario, POWER(salario,2) FROM tb_empregado;

	SELECT salario, POWER(salario,2) FROM tb_empregado WHERE nome = 'Cleber';

	SELECT salario, POWER(salario,2) FROM tb_empregado WHERE nome = 'Zé';

SELECT salario, SQRT(salario) FROM tb_empregado;

	SELECT salario, round(SQRT(salario)) FROM tb_empregado;

	SELECT salario, round(SQRT(salario)) FROM tb_empregado;

	SELECT salario, SQRT(salario) FROM tb_empregado;

SELECT salario, MOD(salario/2) FROM tb_empregado;

SELECT salario, MOD(salario/2) FROM tb_empregado;

SELECT salario, MOD(salario,2) FROM tb_empregado;

SELECT MAX(salario) FROM tb_empregado;

SELECT MIN(salario) FROM tb_empregado;

SELECT AVG(salario) FROM tb_empregado;

	SELECT SUM(salario) FROM tb_empregado;

SELECT COUNT(salario) FROM tb_empregado;

	SELECT MAX(salario),MIN(salario),AVG(salario),SUM(salario),COUNT(salario) FROM tb_empregado;

	SELECT nome, max(salario) FROM tb_empregado;

	SELECT nome FROM tb_empregado WHERE salario = (SELECT max(salario) FROM tm_empregado);

	SELECT nome FROM tb_empregado WHERE salario = (SELECT max(salario) FROM tb_empregado);


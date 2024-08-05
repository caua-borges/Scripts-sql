REM   Script: aula 27_02_2024
REM   usando select e outros comandos (distinct,substr,instr,upper,lower,initcap)

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

CREATE TABLE tb_empregado(  
    id_emp_pk INT PRIMARY KEY,  
    nome	VARCHAR(50),  
    idade 	INT,  
    salario	FLOAT,  
    email	VARCHAR(60),  
 	departamento INT,  
    CONSTRAINT departamento_fk FOREIGN KEY(departamento) 
    REFERENCES tb_departamento(id_dep_pk));

CREATE TABLE tb_empregado(  
    id_emp_pk INT PRIMARY KEY,  
    nome	VARCHAR(50),  
    idade 	INT,  
    salario	FLOAT,  
    email	VARCHAR(60),  
 	departamento INT,  
    CONSTRAINT departamento_fk FOREIGN KEY(departamento) 
    REFERENCES tb_departamento(id_dep_pk));

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

CREATE TABLE tb_empregado(  
    id_emp_pk INT PRIMARY KEY,  
    nome	VARCHAR(50),  
    idade 	INT,  
    salario	FLOAT,  
    email	VARCHAR(60),  
 	departamento INT,  
    CONSTRAINT departamento_fk FOREIGN KEY(departamento)  
    REFERENCES tb_departamento(id_dep_pk 
);

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

	INSERT INTO tb_empregado (1,'Cleber',18,943.64,clebinhodamassa@gmail.com,1);

	INSERT INTO tb_empregado (2, 'Bruna',20,456.30,'bruninhagp@gmail.com',2);

	INSERT INTO tb_empregado (3, 'Zé',65,123.96,'ze@gmail.com',4);

CREATE TABLE tb_departamento(  
    id_emp_pk INT PRIMARY KEY, 
    none varchar(40) NOT NULL UNIQUE 
);

INSERT INTO tb_departamento(1,'T.I');

	INSERT INTO tb_departamento(2,'ADM');

	INSERT INTO tb_departamento(3,'CONTABIL');

	INSERT INTO tb_departamento(4,'OFICINA');

	INSERT INTO tb_departamento(5,'ESTOQUE');

INSERT INTO tb_empregado (1, 'Cleber',18,943.64,'clebinhodamassa@gmail.com',1);

	INSERT INTO tb_empregado (2, 'Bruna',20,456.30,'bruninhagp@gmail.com',2);

	INSERT INTO tb_empregado (3, 'Zé',65,123.96,'ze@gmail.com',4);

SELECT * FROM tb_empregado;

SELECT nome, lower(nome), upper(nome) FROM tb_empregado;

	SELECT nome, upper(nome), lower(nome) FROM tb_empregado;

SELECT salario FROM tb_empregado;

	SELECT nome, upper(nome), lower(nome) FROM tb_empregado;

SELECT nome, upper(nome), lower(nome), initcap(nome), substr(nome,1,3) FROM tb_empregado;

	SELECT nome, substr(Upper(nome,1, 3)) FROM tb_empregado;

SELECT nome, substr(Upper(nome),1, 3) FROM tb_empregado;

SELECT nome, instr (nome, 'e') FROM tb_empregado;

SELECT nome, length(nome) FROM tb_empregado;

SELECT nome, translate(nome,'c','x') FROM tb_empregado;

SELECT nome, translate(nome,'c', 'x') FROM tb_empregado;

SELECT nvl(salario,-10) FROM tb_empregado;

	SELECT nome, lpad(nome,3,'3');

INSERT INTO tb_empregado(id_emp_pk,nome,email,idade) VALUES (4,'anitta','anitta123@gmail.com',64);

SELECT nvl(salario,-10) FROM tb_empregado;

	SELECT id_emp_pk "id" FROM tb_empregado;

SELECT * FROM tb_empregado ORDER BY id_emp_pk;

SELECT * FROM tb_empregado ORDER BY salario;

SELECT * FROM tb_empregado ORDER BY salario DESC;

INSERT INTO tb_empregado(id_emp_pk,nome,email,idade) VALUES (5,'anitta','anitta123@gmail.com',64);

SELECT * FROM tb_empregado;

	SELECT DISTIN (nome) FROM tb_empregado;

	SELECT DISTINCT (nome) FROM tb_empregado;


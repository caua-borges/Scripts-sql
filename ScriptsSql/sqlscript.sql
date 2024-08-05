REM   Script: Aula SQL Banco de dados
REM   Aula 06/02/2024

CREATE TABLE tb_empregado( 
	nome varchar(30), 
    cof varchar(15), 
	idade int, 
	salario float, 
    email varchar(50) 
);

CREATE TABLE tb_empregado( 
	nome VARCHAR(30), 
    cpf VARCHAR(15), 
	idade INT, 
	salario FLOAT, 
    email VARCHAR(50) 
);

INSERT INTO tm_empregado(nome, cpf, idade, salario, email) VALUES('Cleber', '123.456.789-10', 17, 541.36, 'clebinho21@yahoo.com.br');

INSERT INTO tm_empregado(nome, cpf, idade, salario, email) VALUES('Cleber', '123.456.789-10', 17, 541.36, 'clebinho21@yahoo.com.br');

INSERT INTO tm_empregado(nome, cpf, idade, salario, email) VALUES('Cleber', '123.456.789-10', 17, 541.36, 'clebinho21@yahoo.com.br');

INSERT INTO tb_empregado(nome, cpf, idade, salario, email) VALUES('Cleber', '123.456.789-10', 17, 541.36, 'clebinho21@yahoo.com.br');

INSERT INTO tb_empregado(nome, cpf, idade, salario, email) VALUES('Cleber', '123.456.789-10', 17, 541.36, 'clebinho21@yahoo.com.br');

INSERT INTO tb_empregado(nome, cpf, idade, salario, email) VALUES('Cleber', '123.456.789-10', 17, 541.36, 'clebinho21@yahoo.com.br');

INSERT INTO tb_empregado(nome, cpf, idade, salario, email) VALUES('Cleber', '123.456.789-10', 17, 541.36, 'clebinho21@yahoo.com.br');

drop table tb_empregado;

CREATE TABLE tb_empregado( 
	nome VARCHAR(30), 
    cpf VARCHAR(15), 
	idade INT, 
	salario FLOAT, 
    email VARCHAR(50) 
);

INSERT INTO tb_empregado(nome, cpf, idade, salario, email) VALUES('Cleber', '123.456.789-10', 17, 541.36, 'clebinho21@yahoo.com.br');

INSERT INTO tb_empregado(nome, cpf, idade, salario, email) VALUES('Cleber', '123.456.789-10', 17, 541.36, 'clebinho21@yahoo.com.br');

INSERT INTO tb_empregado VALUES('Bruno', '985.743.521-20');

INSERT INTO tb_empregado(nome, cpf) VALUES ('Jailton', '456.789.123-30');

INSERT INTO tb_empregado VALUES('Bruno', '985.743.521-20');

INSERT INTO tb_empregado VALUES('Bruno', '985.743.521-20');

INSERT INTO tb_empregado VALUES('Bruno', '985.743.521-20',21,540.72,'bruninhodomorro@terra.com');

SELECT tb_empregado ;

SELECT * FROM tb_empregado;

SELECT nome,cpf,salario FROM tb_empregado;

SELECT * FROM tb_empregado where nome = 'Bruno';


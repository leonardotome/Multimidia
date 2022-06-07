-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */
CREATE DATABASE multimidia;

USE multimidia;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	equipe VARCHAR(50)
);

-- ALTER TABLE usuario MODIFY COLUMN equipe VARCHAR (50) CONSTRAINT chkEquipe CHECK(equipe in('audio', 'broadcast', 'projecao', 'transmissao'))

CREATE TABLE Escala (
	idEscala INT AUTO_INCREMENT,
    data_escala DATE,
    culto VARCHAR(50) CONSTRAINT chkCulto CHECK(culto in('quarta', 'sexta', 'domingo_manha', 'domingo_noite')),
    fkUsuario INT,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
    PRIMARY KEY(idEscala, fkUsuario)
)	AUTO_INCREMENT = 10;



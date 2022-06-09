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
    culto VARCHAR(50) CONSTRAINT chkCulto CHECK(culto in('Quarta-feira', 'Domingo - Manhã', 'Domingo - Noite')),
    fkUsuario INT,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
    PRIMARY KEY(idEscala, fkUsuario),
    Presenca VARCHAR(50) DEFAULT ('Ausente')
)	AUTO_INCREMENT = 10;

select culto as Dia,
 case
	when culto = 'Durante a semana' then '19:00'
    when culto = 'Domingo - Noite' then '17:30'
    when culto = 'Domingo - Manhã' then '09:30'
    else 'Invalido' end Chegada,
 case
	when culto = 'Sexta-Feira' or culto = 'Durante a semana' then '20:00'
    when culto = 'Domingo - Noite' then '18:30'
    when culto = 'Domingo - Manhã' then '10:30'
    else 'Invalido' end Inicio
from escala;

SELECT * FROM escala;	
select*from usuario;

SELECT COUNT(Presenca) AS 'quantidade' FROM Escala where fkUsuario = 3
union
SELECT COUNT(Presenca) AS 'quantidade' FROM Escala where fkUsuario = 3 and presenca = 'Presente';
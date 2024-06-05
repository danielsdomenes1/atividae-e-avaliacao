USE senaclin

CREATE TABLE Paciente (
codPaciente INT AUTO_INCREMENT NOT NULL, 
nome VARCHAR(50) NOT NULL,
telefone CHAR(11) NOT NULL,
cpf CHAR(11) NOT NULL,
tipoLogradouro VARCHAR(15) NOT NULL,
nomeLogradouro VARCHAR(50) NOT NULL,
numero VARCHAR(6) NOT NULL,
complemento VARCHAR(10) DEFAULT 'não existe',
CONSTRAINT PRIMARY KEY (codPaciente),
CONSTRAINT CHECK (tipoLogradouro='Praça' OR tipoLogradouro='Rua' OR tipoLogradouro='Avenida' OR tipoLogradouro='Rodovia' OR tipoLogradouro='Viela')
);
  
SELECT * FROM paciente
 
CREATE TABLE Dentista (
codDentista INT AUTO_INCREMENT NOT NULL, 
nome VARCHAR(50) NOT NULL,
cro CHAR(8) NOT NULL,
especialidade VARCHAR(100) NOT NULL,
telefone CHAR(11) NOT NULL,
CONSTRAINT PRIMARY KEY (codDentista)
);
 
ALTER TABLE Dentista
ADD celular CHAR(9);

SELECT * FROM dentista
 
 
CREATE TABLE Consulta (
codConsulta INT AUTO_INCREMENT NOT NULL, 
datahora DATETIME NOT NULL,
tipoConsulta VARCHAR(15) NOT NULL,
codPaciente INT NOT NULL,
codDentista INT NOT NULL,
observacao CHAR(100),
CONSTRAINT PRIMARY KEY (codConsulta),
CONSTRAINT FK_paciente_consulta FOREIGN KEY (codPaciente) REFERENCES Paciente (codPaciente),
CONSTRAINT FK_dentista_consulta FOREIGN KEY (codDentista) REFERENCES Dentista (codDentista)
);
 
SELECT * FROM consulta
 
ALTER TABLE Dentista
ADD constraint ck_especialidade check (especialidade= 'Ortodontia' or especialidade= 'geral' or especialidade= 'Periodontia' or especialidade= 'implantodontia' or especialidade= ' ');


ALTER TABLE Consulta
ADD constraint ck_tipoConsulta check (tipoconsulta= 'avaliação' or tipoconsulta= 'Tratamento');
 
ALTER TABLE Paciente
ADD cidade VARCHAR(30) NOT NULL;


 
INSERT INTO Paciente (nome, telefone, cpf, tipologradouro, nomelogradouro, numero, complemento, cidade) 
VALUES ('Roberto','11224466365', '11335566110','Rua', 'Ana Costa', '140', 'casa', 'Santos');
 
INSERT INTO Paciente (nome, telefone, cpf, tipologradouro, nomelogradouro, numero, complemento, cidade) 
VALUES ('Luiza','11335566226', '11225577110','Avenida', 'Coelho', '20', 'casa', 'Santos');
 
INSERT INTO Paciente (nome, telefone, cpf, tipologradouro, nomelogradouro, numero, complemento, cidade) 
VALUES ('Pedro','11224455467', '11005566112','Praça', 'Da Saudade', '22', 'casa', 'Santos');
 
INSERT INTO Paciente (nome, telefone, cpf, tipologradouro, nomelogradouro, numero, complemento, cidade) 
VALUES ('Vitoria','11225566997', '11338866115','Rua', 'Alcantara', '67', 'casa', 'Guarujá');
 
INSERT INTO Paciente (nome, telefone, cpf, tipologradouro, nomelogradouro, numero, complemento, cidade) 
VALUES ('Arnaldo','22114466974', '33115566110','Praça', 'Antonio Mello', '51', 'casa', 'São Vicente');
 
INSERT INTO Paciente (nome, telefone, cpf, tipologradouro, nomelogradouro, numero, complemento, cidade) 
VALUES ('Douglas','114422661257', '11336655110','Avenida', 'Santo Antonio', '21', 'casa', 'São Vicente');


SELECT * FROM paciente


INSERT INTO Dentista (nome, cro, especialidade, telefone) 
VALUES ('Gabriela', '33224455', 'Ortodontia', '11223355668');
 
INSERT INTO Dentista (nome, cro, especialidade, telefone) 
VALUES ('Gabriel', '33556622', 'Periodontia', '11223322667');
 
INSERT INTO Dentista (nome, cro, especialidade, telefone) 
VALUES ('Alice', '33446677', 'Implantodontia', '11224433668');
 
INSERT INTO Dentista (nome, cro, especialidade, telefone) 
VALUES ('Fabiana', '33445566', 'Geral', '11334477662'); 


SELECT * FROM dentista


 
INSERT INTO Consulta (datahora, tipoconsulta, codpaciente, coddentista, observacao)
VALUES ('2024-05-23 13:30:00', 'Avaliação', 1, 1, '');
 
INSERT INTO Consulta (datahora, tipoconsulta, codpaciente, coddentista, observacao)
VALUES ('2024-06-22 15:40:00', 'Avaliação', 2, 4, '');
 
INSERT INTO Consulta (datahora, tipoconsulta, codpaciente, coddentista, observacao)
VALUES ('2024-07-24 12:20:00', 'Avaliação', 3, 4, '');

SELECT * FROM consulta 


UPDATE dentista 
SET especialidade = 'Geral', telefone= '11223344550', celular= '123456789'
WHERE coddentista= 3;


UPDATE consulta
SET datahora = '2024-05-30 15:00:00'
WHERE codconsulta= 3;
 
UPDATE consulta
SET tipoconsulta= 'tratamento', observacao= 'Tratamento será realizado em 10 consultas. Prioridade: Moderada. Remédio aplicado: Ponstan, caso sinta dores'
WHERE codconsulta= 1;


SELECT nome, cidade FROM paciente
WHERE cidade='Santos'
ORDER BY nome ASC /*A-Z*/


SELECT dentista.nome, paciente.nome,consulta.datahora, dentista.telefone, paciente.telefone
FROM consulta
INNER JOIN paciente
ON  consulta.codDentista = consulta.codPaciente
INNER JOIN dentista
ON dentista.coddentista = paciente.codpaciente


SELECT COUNT(codDentista) AS 'Dentistas Registrados', especialidade FROM dentista
GROUP BY especialidade


SELECT COUNT(codConsulta) AS quantidade_consultas
FROM consulta
WHERE datahora like '2024-07%'



SELECT tipoconsulta, COUNT(codConsulta) AS quantidade
FROM consulta
GROUP BY tipoconsulta;



 
SELECT COUNT(codPaciente) AS NumeroDePaciente
FROM paciente;


SELECT dentista.nome AS NomeDentista, dentista.CRO, consulta.datahora, paciente.nome AS NomePaciente
FROM consulta
JOIN dentista ON consulta.codDentista = dentista.codDentista
JOIN paciente ON consulta.codPaciente = paciente.codPaciente
WHERE dentista.especialidade = 'implantodontia'
ORDER BY consulta.datahora DESC;





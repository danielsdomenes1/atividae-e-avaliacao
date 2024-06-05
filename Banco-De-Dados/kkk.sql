CREATE DATABASE starterdb1 

CREATE TABLE Clientes (
idCliente INT AUTO_INCREMENT NOT NULL, 
nome VARCHAR(50) NOT NULL,
dataNascimento DATETIME NOT NULL,
celular CHAR(11) NOT NULL,
cpf CHAR(11) NOT NULL,
tipoLogradouro VARCHAR(15),
nomeLogradouro VARCHAR(50) NOT NULL,
numero VARCHAR(6) NOT NULL,
complemento VARCHAR(10) DEFAULT 'não existe',
cidade VARCHAR(30) NOT NULL,
cep CHAR(8) NOT NULL,
estado CHAR(2) NOT NULL,
tipoMoradia CHAR(10),
CONSTRAINT PRIMARY KEY (idCliente),
CONSTRAINT CHECK (tipoLogradouro='Praça' OR tipoLogradouro='Rua' OR tipoLogradouro='Avenida' OR tipoLogradouro='Rodovia' OR tipoLogradouro='Viela')
);

SELECT * FROM clientes


CREATE TABLE Contas(
idConta INT AUTO_INCREMENT NOT NULL,
numeroConta CHAR(8) NOT NULL,
saldo DECIMAL (14,2) NOT NULL,
limite DECIMAL (10,2) NOT NULL,
statusConta CHAR(1) DEFAULT '1', /*1 é ATIVA*/
idTipoConta INT NOT NULL,
CONSTRAINT PRIMARY KEY (idConta),
CONSTRAINT FK_Contas_TiposConta FOREIGN KEY (idTipoConta)
REFERENCES TiposConta(idTipoConta),
CONSTRAINT CK_Saldo CHECK (saldo>=0)
);


SELECT * FROM Contas


CREATE TABLE TiposConta(
idTipoConta INT AUTO_INCREMENT NOT NULL,
nomeTipoConta VARCHAR(20) NOT NULL,
CONSTRAINT PRIMARY KEY (idTipoConta),
CONSTRAINT UNIQUE (nomeTipoConta)
);

SELECT * FROM tiposconta


CREATE TABLE ClientesContas(
 
idCliente INT NOT NULL,
 
idConta INT NOT NULL,
 
CONSTRAINT PRIMARY KEY (idCliente,idConta),/*PK Composta*/
 
CONSTRAINT FK_ClientesContas_Clientes FOREIGN KEY (idCliente) REFERENCES Clientes(idCliente),
 
CONSTRAINT FK_ClientesContas_Contas FOREIGN KEY (idConta) REFERENCES contas(idConta)
 
);

SELECT * FROM clientescontas


/*Trazer o nome dos clientes, o telefone, o número da conta*/
SELECT nome,celular, idConta
FROM clientes
INNER JOIN clientescontas
ON  clientes.idCliente = clientescontas.idcliente /*critério de junção das tabelas*/


SELECT nome, numeroconta, tiposconta
FROM clientes 
inner join clientescontas
ON clientes.idcliente = clientescontas.idcliente
INNER JOIN 
contas 
ON clientescontas.idconta = contas.idconta
INNER JOIN tiposconta 
ON contas.idTipoConta=tiposconta.idtipoconta



/*Trazer o total de contas que temos agrupadas pelo seu tipo*/
 
select nomeTipoConta, COUNT(idconta) FROM 
tiposconta
INNER JOIN 
contas 
ON contas.idTipoConta = tiposconta.idtipoconta
GROUP BY nomeTipoConta
 
 

CREATE DATABASE SENACLIN 
SELECT clientes.nome, clientes.celular, contas.numeroconta, contas.saldo
FROM clientes 
LEFT JOIN clientescontas
ON clientes.idcliente = clientescontas.idcliente
LEFT JOIN contas 
ON clientescontas.idconta = contas.idconta
 
/*Trazer todos os tipos de contas e respectivas numeros de contas mesmo
que os tipos não possuam nenhuma conta ativa*/
SELECT nomeTipoConta, numeroConta FROM 
tiposconta
left JOIN 
contas 
ON contas.idTipoConta = tiposconta.idtipoconta
 
SELECT numeroconta, saldo, nometipoconta, idtipoconta FROM contas
INNER JOIN tiposconta
ON contas.idtipoconta = tiposconta.idtipoconta
INNER JOIN <nomeOutraTabela>
ON 
INNER JOIN <nomeOutraTabela>
ON 
WHERE nometipoconta = 'corrente'
ORDER BY saldo DESC
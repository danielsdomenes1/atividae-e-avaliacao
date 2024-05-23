daniel12 ALTER TABLE Usuario

DELETE FROM usuario


INSERT INTO Usuario (idUsuario,nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero,complemento,cidade,estado,cep,bairro)  
VALUES(6,'Pedro','33224455','00000000001','contato@Pedro.com.br','masculino','Avenida','Engenheiro Manuel ferramenta junior','27','casa','santos','SP','11086400','Areia Banca');
 
INSERT INTO Usuario (idUsuario,nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero,complemento,cidade,estado,cep,bairro)  
VALUES (7,'Lucas','39224456','00000000002','contato@Lucas.com.br','masculino','Avenida','Brasil','412','ap11','Santos','SP','01430000','Jardim América');
 
INSERT INTO Usuario (idUsuario,nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero,cidade,estado,cep,bairro)  
VALUES (8,'Vinicio','37224457','00000000003','contato@Vinicio.com.br','masculino','Avenida','Francisco Glicério','44','Santos','SP','11065401','Gonzaga');
 
INSERT INTO Usuario (idUsuario,nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero,cidade,estado,cep,bairro)  
VALUES (9,'Dell','35224458','00000000004','contato@Dell.com.br','masculino','Rua','Alameda Ari Barroso','890','Sao Vicente','SP','11320400','Ilha Porchat');
 
INSERT INTO Usuario (idUsuario,nome,senha,cpf,email,genero,tipologradouro,nomelogradouro,numero,complemento,cidade,estado,cep,bairro) 
VALUES (10,'Chico','31224459','00000000005','contato@Chico.com.br','masculino','Rua','Alameda Adriano Neiva da Mota e Silva','313','casa 2','Santos','SP','11065690','José Menino');  
  
SELECT * FROM usuario  


  


INSERT INTO aluno (idUsuario,matricula,nivelPontualidade)
VALUES ('6','0000000001','5');

INSERT INTO aluno (idUsuario,matricula,nivelPontualidade)
VALUES ('7','0000000002','4');

INSERT INTO aluno (idUsuario,matricula,nivelPontualidade)
VALUES ('8','0000000003','3');

INSERT INTO aluno (idUsuario,matricula,nivelPontualidade)
VALUES ('9','0000000004','2');

INSERT INTO aluno (idUsuario,matricula,nivelPontualidade)
VALUES ('10','0000000005','5');


SELECT * FROM aluno
  
  
INSERT INTO Livro (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, ISEN) 
VALUES ('1','Dom Quixote','3','Romance','1033','Espanhol','1605','5ª','1234567890');
 
INSERT INTO Livro (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, ISEN) 
VALUES ('2','Um conto de duas cidades','2','Romance','850','Portugues','1995','2ª','1234567890');
 
INSERT INTO Livro (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, ISEN) 
VALUES ('3','O Senhor dos Anéis','4','Fantasia','975','Ingles','2000','3ª','1234567777');
 
INSERT INTO Livro (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao,ISEN) 
VALUES ('3','O Pequeno Principe ','1','Romance','350','Alemão','1982','2ª','1234567888');
 
INSERT INTO Livro (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao,ISEN) 
VALUES ('2','Harry Potter e a Pedra Filosofal','3','Fantasia','760','Inglês','2012','1ª','1234567999');
 
INSERT INTO Livro (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, ISEN) 
VALUES ('1','E não sobrou Nenhum','3','Suspense','320','Francês','2020','2ª','1234567000');
 
INSERT INTO Livro (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao,ISEN) 
VALUES ('2','O Sonho da Câmara Vermelha','2','Drama','1320','Polonês','1995','2ª','1234567111');
 
INSERT INTO Livro (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao,ISEN) 
VALUES ('2','Ela, A Feiticeira','2','Fantasia','832','Inglês','1994','4ª','1234567222');
 
INSERT INTO Livro (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao, ISEN) 
VALUES ('1','O leão, a Feiticeira e o Guarda Roupa','5','Suspense','1134','Argentino','1974','4ª','1234567333');
 
INSERT INTO Livro (idEditora, nome, tomo, genero, qtdPaginas, idioma, ano, edicao,ISEN) 
VALUES ('3','O Código da Vinci','4','Drama','1438','Ingles','1974','4ª','1234567444');


SELECT * FROM Livro


INSERT INTO contatoTelefonico (ddi, ddd, numero,idUsuario) 

VALUES ( '+55', '13', '999877621', 1); 

INSERT INTO contatoTelefonico ( ddi, ddd, numero,idUsuario) 

VALUES ('+55', '21', '988877621', 2 ); 

INSERT INTO contatoTelefonico (, ddi, ddd, numero,idUsuario) 

VALUES ( '+55', '51', '977877621', 3); 

INSERT INTO contatoTelefonico (ddi, ddd, numero,idUsuario) 

VALUES ( '+55', '51', '977877621', 4); 

INSERT INTO contatoTelefonico ( ddi, ddd, numero,idUsuario) 

VALUES ('+55', '66', '955877621', 5); 

INSERT INTO contatoTelefonico ( ddi, ddd, numero,idUsuario)  

VALUES ( '+55', '51', '977877621', 6);

INSERT INTO contatoTelefonico ( ddi, ddd, numero,idUsuario) 

VALUES ( '+55', '51', '977877621', 7); 

INSERT INTO contatoTelefonico( ddi, ddd, numero,idUsuario)  

VALUES ( '+55', '51', '977877621', 8); 

INSERT INTO contatoTelefonico ( ddi, ddd, numero,idUsuario)  

VALUES ( '+55', '51', '977877621', 9); 

INSERT INTO contatoTelefonico ( ddi, ddd, numero,idUsuario) 

VALUES ( '+55', '51', '977877621', 10);


SELECT * FROM contatotelefonico



INSERT INTO usuario ( 

nome, cpf, email, genero,tipologradouro , nomelogradouro, 

numero, cidade, cep, estado, bairro, 

senha 

)  

VALUES( 

'Alice',  

'20292504225',  

'alice.isabel.dacunha@freitasprior.com.br', 

'F',  

'Armínio de Souza Nunes', 

'Rua',  

'153',  

'Caxias do Sul',  

'95059832', 

'RS',  

'São Cristóvão',  

'11111111111' 

); 

  

INSERT INTO usuario ( 

nome, cpf, email, genero, tipologradouro , nomelogradouro, 

numero, cidade, cep, estado, bairro, 

senha 

)  

VALUES( 

'Samuel', 

'19396615528',  

'samuel_ricardo_farias@atiara.com.br', 

'M',  

'João Paulo I',  

'Rua', 

'391',  

'Boa Vista',  

'69305180',  

'RR', 

'São Francisco',  

'22222222222' 

); 

  

INSERT INTO usuario ( 

nome, cpf, email, genero, tipologradouro , nomelogradouro,

numero, cidade, cep, estado, bairro, 

senha 

)  

VALUES( 

'Laura',  

'70759296073',  

'laura_rayssa_daluz@ornatopresentes.com.br', 

'F',  

'Soldado-Polícia Militar Jacinto José de Santana da Silva', 

'Rua',  

'663',  

'Boa Vista',  

'69313572', 

'RR',  

'Caranã',  

'33333333333' 

); 

 

 

INSERT INTO usuario ( 

nome, cpf, email, genero, tipologradouro , nomelogradouro, 

numero, cidade, cep, estado, bairro, 

senha 

)  

VALUES( 

'Paulo',  

'35157051808',  

'paulo_alves@valeguinchos.com.br', 

'M',  

'Lucerna',  

'Rua',  

'654', 

'Parnamirim',  

'59141310',  

'RN',  

'Rosa dos Ventos', 

'44444444444' 

); 

 

 

INSERT INTO usuario ( 

nome, cpf, email, genero, tipologradouro , nomelogradouro, 

numero, cidade, cep, estado, bairro, senha 

)  

VALUES( 

'Lorena',  

'98749543709',  

'lorena_moura@technew.ind.br', 

'F',  

'Pelotas',  

'Avenida', 

'847',  

'Serra',  

'29166063',  

'ES', 

'Barcelona', 

'55555555555' 

); 


SELECT * FROM usuario 


 

INSERT INTO recepcionista (idrecepcionista,ctps)  

VALUES('1','3894793184'); 

  

INSERT INTO recepcionista (idrecepcionista,ctps)  

VALUES('2','2396409101'); 

  

INSERT INTO recepcionista (idrecepcionista,ctps)  

VALUES('3','9827510485'); 

  

INSERT INTO recepcionista (idrecepcionista,ctps)  

VALUES('4','6154847379'); 

  

INSERT INTO recepcionista (idrecepcionista,ctps)  

VALUES('5','947556817'); 

 



Isabella 

 

INSERT INTO autor (nome, nacionalidade)  

VALUES ('Roberto', 'Portugues');  

INSERT INTO autor (nome, nacionalidade)  

VALUES ('Ana', 'Brasileira');  

INSERT INTO autor (nome, nacionalidade)  

VALUES ('Flavia', 'Inglesa');  

insert INTO autor (nome, nacionalidade)  

VALUES ('Antonio', 'Russo');  

INSERT INTO autor (nome, nacionalidade)  

VALUES ('Everton', 'Angolano');  

INSERT INTO autor (nome, nacionalidade)  

VALUES ('Rita', 'Francesa');  

INSERT INTO autor (nome, nacionalidade)  

VALUES ('Selena', 'Brasileira');  

INSERT INTO autor (nome, nacionalidade)  

VALUES ('Jurandi', 'Brasileiro');  

INSERT INTO autor (nome, nacionalidade)  

VALUES ('Enrique', 'Brasileiro');  

INSERT INTO autor (nome, nacionalidade)  

VALUES ('Antonia', 'Portuguesa');  

INSERT INTO autor (nome, nacionalidade)  

VALUES ('Nani', 'Portuguesa'); 


SELECT * FROM autor


INSERT INTO livroautor (idLivro, idAutor)   

VALUES ('19', '1');  

INSERT INTO livroautor (idLivro, idAutor)   

VALUES ('19', '6'); 

INSERT INTO livroautor (idLivro, idAutor)   

VALUES ('20', '2'); 

INSERT INTO livroautor (idLivro, idAutor)   

VALUES ('21', '3'); 

INSERT INTO livroautor (idLivro, idAutor)   

VALUES ('22', '4'); 

INSERT INTO livroautor (idLivro, idAutor)   

VALUES ('23', '5'); 

INSERT INTO livroautor (idLivro, idAutor)   

VALUES ('23', '4'); 

INSERT INTO livroautor (idLivro, idAutor)   

VALUES ('24', '7'); 

INSERT INTO livroautor (idLivro, idAutor)   

VALUES ('25', '8'); 

INSERT INTO livroautor (idLivro, idAutor)   

VALUES ('26', '9'); 

INSERT INTO livroautor (idLivro, idAutor)   

VALUES ('27', '10'); 

INSERT INTO livroautor (idLivro, idAutor)   

VALUES ('28', '11'); 
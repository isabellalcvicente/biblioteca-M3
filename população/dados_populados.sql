-- passando os argumentos
INSERT INTO bibliotecam3.enderecos(rua,n_casa,cep,complemento)
-- inserindo os dados
	VALUES ('Rua Luiz Leão', '1', '80030010', 'N/A'),
		   ('Rua XV de Novembro', '700', '80001970', 'casa'),
           ('Rua Marechal Deodoro', '298','80010970','ap 234'),
           ('Rua João Negrão', '1251', '80238983', 'ap 72'),
		   ('Rua Brigadeiro Franco', '2300', '80250903', 'N/A'),
           ('Avenida Antônio Munari', '73', '83601420', 'casa'),
           ('Avenida José Salles Pinto', '892', '83601400', 'ap 214'),
           ('Rua João Elpídio Cardoso', '3245', '83601550', 'casa'),
           ('Rua Morro Vermelho', '65', '83601576', 'fundos'),
           ('Travessa Vicir Roque Lunardon', '91', '83601578', 'ap 36'),
           ('Rua Angelin Domingos Carli', '218', '83601580', 'ap 87'),
           ('Rua República Argentina', '185', '83601722', 'sobrado'),
           ('Rua Mário de Pieri', '98', '83601740', 'casa'),
           ('Rua Mário de Pieri', '98', '83601740', 'casa'),
           ('Rua João Marques dos Santos', '2356', '83601755', 'casa');
           
select * from enderecos;
--mostra a tabela populada


INSERT INTO bibliotecam3.pessoas(nome, email, cpf, telefone, nasc, id_endereco) 
	VALUES 
		('Victor Martins', 'victor@email.com', '44243455805', '997111854', '1994-08-01', '1'),
        ('João Pedro', 'joaopedro@gmail.com','123789456', '987656738', '1996-08-26', '2'),
		('Valéria Bandeira', 'valeriabandeira@gmail.com','672839456', '982744567','2002-12-04', '3'),
		('Diogo Defante', 'diogodefante@gmail.com','678234564', '968239325', '1993-07-27', '4'),
		('Lucas Rafael', 'lucasrafael@gmail.com','986283548', '827492455',  '1990-05-21', '5'),
        ('Maria Eduarda', 'mariaeduarda@gmail.com','72836425', '968735463', '1975-04-02', '6'),
        ('Jurandiz Pinheiro', 'eujurandir@gmail.com','123567892', '827492753', '2005-04-28', '7'),
        ('Antonio Henrique', 'toninhohehe@gmail.com','27726462', '942648358', '1998-11-12', '8'),
        ('Ricardo Gomes', 'ricardinhoplay@gmail.com','7918983', '928376543', '2004-12-25', '9'),
        ('Crescio Mendes', 'cresciomendes@gmail.com','98239248', '975634577', '1986-10-30', '10'),
        ('Marcelo Junior', 'marcelojunior@gmail.com','873826456', '928774295', '1959-06-13', '11'),
        ('Carina Silva', 'carinasilva@gmail.com','71653243', '928784565', '1995-10-03', '12'),
        ('Myrian Cardozo', 'myriancardoso@gmail.com','87837483', '929283525', '1989-08-18', '13'),
		('Mariana Cardozo', 'maricardoso@gmail.com','87837484', '928237758', '1989-08-18', '14'),
		('Samira Santos', 'samira santos@gmail.com','12874856', '978918973', '1983-09-21', '15');
		
        
SELECT * FROM pessoas;

INSERT INTO bibliotecam3.usuarios(senha, id_pessoa)
	VALUES 
		('12345','1'),
        ('54321','2'),
        ('12354','7'),
        ('54123','9'),
        ('32451','12');
SELECT * FROM usuarios;

INSERT INTO bibliotecam3.funcionarios(senha, cargo, id_pessoa)
	VALUES 
		 ('98765', 'bibliotecaria','6'),
         ('98860', 'auxiliar de biblioteca','8'),
         ('56478', 'organizador','13'),
         ('12475', 'auxiliar de limpeza','15'),
         ('23498', 'estagiario','3');
SELECT * FROM funcionarios;


INSERT INTO bibliotecam3.autores(qtd_livros, id_pessoa)
	VALUES 
		('3','4'),
        ('5','14'),
        ('7','11'),
        ('2','10'),
        ('8','5');
SELECT * FROM autores;

INSERT INTO bibliotecam3.generos(genero)
	VALUES 
		('ação'),
        ('aventura'),
        ('suspense'), 
        ('drama'),
        ('terror'),
        ('juvenil'),
        ('teen');
SELECT * FROM generos;

INSERT INTO bibliotecam3.editoras(empresa,cnpj,telefone,email)
	VALUES 
		('Next Page', '8700827', '40028922', 'nextpage@editora.com'),
        ('Maio', '9272234', '87762346', 'maio@editora.com'),
        ('NotBook', '2848235', '34428953', 'notbook@editora.com'), 
        ('Tela azul ', '8983657', '37575843', 'telaazul@editora.com'),
        ('Amigos e livros', '728900', '34789856', 'amigoselivros@editora.com');
SELECT * FROM editoras;

INSERT INTO bibliotecam3.livros(titulo, ano, qtd_paginas, isbn, idioma, disponibilidade,id_autor,id_genero,id_editora)
	VALUES
		('O iluminado', '1977-01-28', '256', '87872845', 'EN', '0', '1', '3', '5'), 
        ('Capivaras Amigas', '1999-05-15', '342', '87937475', 'PT', '0', '2', '2', '4'), 
        ('O grande NÃO', '2012-08-28', '231', '8193781', 'PT', '0', '3', '1', '3'), 
        ('Apenas vida', '2003-11-12', '560', '9243756', 'EN', '0', '4', '5', '2'), 
        ('Andando reto', '2005-02-18', '432', '87872845', 'NO', '0', '5', '4', '1'); 
SELECT * FROM livros;

INSERT INTO bibliotecam3.emprestimos(data_emprestimo, data_devolucao, id_usuario, id_livro, id_funcionario)
	VALUES
		('2023-06-25', '2023-07-25', '1', '1','1'),
		('2023-05-12', '2023-05-12', '2', '2','1'),
        ('2023-04-05', '2023-05-05', '3', '3','1'),
        ('2023-05-20', '2023-06-20', '4', '4','1'),
        ('2023-06-16', '2023-07-16', '5', '5','1');
SELECT * FROM emprestimos;
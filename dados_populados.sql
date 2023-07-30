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

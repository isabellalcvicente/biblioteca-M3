CREATE database if not exists bibliotecaM3;
use bibliotecaM3;

CREATE TABLE if not exists `enderecos` (
    `id_endereco` INT PRIMARY KEY NOT NULL AUTO_INCREMENT ,
    `rua` VARCHAR(100),
    `n_casa` INT,
    `cep` INT,
    `complemento` VARCHAR(100)
);
-- mostra as tabelas
SHOW TABLES;

CREATE TABLE if not exists `pessoas` (
    `id_pessoa` INT PRIMARY KEY  NOT NULL AUTO_INCREMENT ,
    `nome` VARCHAR(100),
    `email` VARCHAR(100),
    `cpf` VARCHAR(14),
    `telefone` INT,
    `nasc` DATE,
    `id_endereco` INT,
    FOREIGN KEY (id_endereco) REFERENCES enderecos(id_endereco) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE if not exists `usuarios` (
    `id_usuario` INT PRIMARY KEY  NOT NULL AUTO_INCREMENT ,
    `senha` VARCHAR(100),
    `id_pessoa` INT, 
	 FOREIGN KEY (id_pessoa) REFERENCES pessoas(id_pessoa) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE if not exists `funcionarios` (
    `id_funcionario` INT PRIMARY KEY  NOT NULL AUTO_INCREMENT ,
    `senha` VARCHAR(100),
    `cargo` VARCHAR(100),
    `id_pessoa` INT, 
	 FOREIGN KEY (id_pessoa) REFERENCES pessoas(id_pessoa) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE if not exists `autores` (
    `id_autor` INT PRIMARY KEY  NOT NULL AUTO_INCREMENT ,
    `qtd_livros` INT,
    `id_pessoa` INT,
	 FOREIGN KEY (id_pessoa) REFERENCES pessoas(id_pessoa) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE if not exists `generos` (
  `id_genero` int PRIMARY KEY  NOT NULL AUTO_INCREMENT,
  `genero` enum ('acao', 'aventura ', 'suspense', 'drama', 'terror', 'juvenil', 'teen')
);

CREATE TABLE if not exists `editoras` (
    `id_editora` INT PRIMARY KEY  NOT NULL AUTO_INCREMENT ,
    `empresa` VARCHAR(100),
    `cnpj` INT,
    `telefone` INT,
    `email` VARCHAR(100)
);

CREATE TABLE if not exists `livros` (
    `id_livro` INT PRIMARY KEY  NOT NULL AUTO_INCREMENT ,
    `titulo` VARCHAR(100),
    `ano` DATE,
    `qtd_paginas` INT,
    `ISBN` INT,
    `idioma` VARCHAR(2),
    `disponibilidade` BIT NOT NULL,
    `id_autor` INT,
	FOREIGN KEY (id_autor) REFERENCES autores(id_autor) ON UPDATE CASCADE ON DELETE CASCADE,
    `id_genero` INT,
	FOREIGN KEY (id_genero) REFERENCES generos(id_genero) ON UPDATE CASCADE ON DELETE CASCADE,
    `id_editora` INT,
	FOREIGN KEY (id_editora) REFERENCES editoras(id_editora) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE if not exists `emprestimos` (
  `id_emprestimo` int PRIMARY KEY  NOT NULL AUTO_INCREMENT ,
  `data_emprestimo` timestamp,
  `data_devolucao` date,
  `id_usuario` int,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON UPDATE CASCADE ON DELETE CASCADE,
  `id_livro` int,
  FOREIGN KEY (id_livro) REFERENCES livros(id_livro) ON UPDATE CASCADE ON DELETE CASCADE,
  `id_funcionario` int,
  FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario) ON UPDATE CASCADE ON DELETE CASCADE
);
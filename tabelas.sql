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
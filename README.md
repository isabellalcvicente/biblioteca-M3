# biblioteca-M3

📊Banco de Dados BibliotecaM3
Esse é uma banco de dados referente à uma biblioteca/livraria do M3, com livros, autores, usuários e a possibilidade de fazer um empréstimo de livros. 
📝Requisitos para funcionar:
Antes de executar o banco de dados localmente, certifique-se de ter as seguintes ferramentas instaladas em sua máquina:

MySQL Server
MySQL Workbench

🗺️Estrutura do Banco de Dados:
O banco de dados da biblioteca é composto pelas seguintes tabelas:

Endereços: Guarda os endereços, com id do endereço, rua número da casa, cep e complemento. 

Pessoas: Guarda as informações comuns das pessoas, com id das pessoas, nome, email, cpf, telefone, nascimento e a FK id_endereço, pois toda pessoa tem um endereço. 

Usuários: Puxa as pessoas que são usuários da tabela pessoas e acrescenta um id do usuario e senha. 

Funcionários: Puxa as pessoas que são funcionárias da tabela pessoas e ascrescenta um id do funcionario, senha e um cargo. 

Autores: Puxa as pessoas que são autores da tabela pessoas e ascrescenta um id dos autores e a quantidade de livros. 

Gêneros: Guarda os gêneros mais comuns com o enum, também possui um id genero. 

Editoras: Guarda as informações de editoras, com id de editoras, o nome da empresa, cnpj, telefone e email. 

Livros: Guarda as informações de livros com id de livros, o título, ano de publicação, a quantidade de páginas, ISBN, idioma, disponibilidade (ofertada em 0 e 1, sendo 0=disponível e 1=não disponível), também puxa as informações do autor e de qual genero é. 

Empréstimos: Guarda as informações de emprestimos, com o id de cada empréstimo, a data do empréstimo, a data da devolução, puxando quem emprestou pelo id do usuario e qual funcionario fez o emprestimo pelo id do funcionario. ﻿

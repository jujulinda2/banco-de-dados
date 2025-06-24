create table filme(
	filme_id serial,
	titulo varchar (40),
	descricao text,
	ano_lancamento char(4),
	linguagem_id int,
	aluguel_duracao int,
	aluguel_preco numeric(4,2),
	tamanho_filme int,
	multa numeric(4,2),
	classificacao_indicativa int,
	ultima_atualizacao timestamp,
	ocasiao_especial text,
	sinopse text
	
);

create table linguagem(
	linguagem_id serial,
	nome varchar(20),
	ultima_atualizacao timestamp
);

create table filme_ator(
	ator_id int,
	filme_id int,
	ultima_atualizacao timestamp
);

create table inventario(
	inventario_id serial,
	filme_id int,
	loja_id int,
	ultima_atualizacao timestamp
);

create table aluguel(
	aluguel_id serial,
	aluguel_data timestamp,
	inventario_id int,
	cliente_id int,
	data_retorno timestamp,
	funcionario_id int,
	ultima_atualizacao timestamp
);

create table pagamento(
	pagamento_id serial,
	cliente_id int,
	funcionario_id int,
	aluguel_id int,
	valor numeric(4,2),
	data_pagamento date
);

create table funcionario(
	funcionario_id serial,
	primeiro_nome varchar(20),
	ultimo_nome varchar(20),
	endereco_id int,
	email varchar(80),
	loja_id int,
	ativo bool,
	nome_usuario varchar(20),
	senha char(5),
	ultima_atualizacao timestamp,
	foto bytea
	
);

create table ator(
	ator_id serial,
	primeiro_nome varchar(20),
	ultimo_nome varchar(20),
	ultima_atualizacao timestamp
);

create table cliente(
	cliente_id serial,
	loja_id int,
	primeiro_nome varchar(20),
	ultimo_nome varchar(20),
	email varchar(80),
	endereco_id int,
	data_criacao timestamp,
	ultima_atualizacao timestamp,
	ativo bool
);

create table endereco(
	endereco_id serial,
	endereco varchar(40),
	endereco2 varchar(40),
	distrito varchar(3]0),
	cidade_id int,
	cep char(8),
	numero_celular char(11),
	ultima_atualizacao timestamp
);

create table cidade(
	cidade_id serial,
	cidade varchar(30),
	pais_id int,
	ultima_atualizacao timestamp
);

create table pais(
	pais_id serial,
	pais varchar(20),
	ultima_atualizacao timestamp
);

create table loja(
	loja_id serial,
	chefe_equipe_id int,
	endereco_id int, 
	ultima_atualizacao timestamp
);

--remover coluna
alter table loja drop column ultima_atualizacao;

--adicionar coluna
alter table loja add column ultima_atualizacao timestamp;

--renomear coluna
alter table loja rename column ultima_atualizacao

--alterar tipo de dado da coluna
alter table loja alter column ultima_atualizacao
	set data type timestamp
	
--criação de chaves primárias
alter table categoria add primary key (categoria_id);
alter table filme add primary key (filme_id);
alter table linguagem add primary key (linguagem_id);
alter table inventario add primary key (inventario_id);
alter table pais add primary key(pais_id);
alter table ator add primary key(ator_id);
alter table cidade add primary key(cidade_id);
alter table loja add primary key(loja_id);
alter table pagamento add primary key(pagamento_id);
alter table endereco add primary key(endereco_id);
alter table cliente add primary key(cliente_id);
alter table funcionario add primary key(funcionario_id);
alter table aluguel add primary key(aluguel_id); 
CREATE database escritorio; 


CREATE TABLE funcionario (
	id serial,
	nome varchar(20),
	data_nascimento date,
	cpf char (11),
	endereco_id int,
	cargo_id int
);


CREATE TABLE endereco (
	id serial,
	logradouro(rua) varchar(50),
	localidade varchar(20),
	uf char(2),
	cep char(8),
	bairro varchar(20)
);


CREATE TABLE cargo (
	id serial,
	nome varchar(30),
	descricao varchar(100)
);

ALTER TABLE funcionario ADD PRIMARY KEY (id);
ALTER TABLE endereco ADD PRIMARY KEY (id);
ALTER TABLE cargo ADD PRIMARY KEY (id);

ALTER TABLE funcionario 
ADD CONSTRAINT fk_endereco
FOREIGN KEY (endereco_id)
REFERENCES endereco (endereco_id);


ALTER TABLE funcionario 
ADD CONSTRAINT fk_cargo
FOREIGN KEY (cargo_id)
REFERENCES cargo (cargo_id);

INSERT INTO endereco (logradouro, localidade, uf, cep, bairro)
VALUES ('Rua Mathias Hillen', 'Petrópolis', 'RJ', '25670050', 'Mosela'),
('Rua Doutor Paulo Rumide', 'Petrópolis', 'RJ', '25088224', 'Quitandinha'),
('Rua Avenida Presidente Castelo Branco', 'Petrópolis', 'RJ', '25680351', 'Retiro'),
('Rua Quissamã', 'Petrópolis', 'RJ', '25615411', 'Quissamã'),
('Rua Pedro Vogel Sobrinho', 'Petrópolis', 'RJ', '25720045', 'Castrioto');



INSERT INTO cargo (nome, descricao)
VALUES ('CEO', 'Lidera a empresa, define estratégias e toma decisões chave'),
('Tesoureiro', 'Gerencia as finanças, controla fluxo de caixa e cuida do orçamento'),
('Secretário Júnior', 'Auxilia em tarefas administrativas e no atendimento básico'),
('Secretário Sênior', 'Organiza agendas, documentos e apoia executivos com eficiência'),
('Assistente Administrativo', 'Dá suporte em rotinas administrativas e organização de processos');



INSERT INTO funcionario (nome, data_nascimento, cpf, endereco_id, cargo_id)
VALUES ('Julia Pinheiro', '2008-06-22', '16989352779', 1, 1),
('Fabrício', '2008-10-15', '17167339792', 2, 2),
('Giovana', '2009-02-02', '20041933796', 3, 3),
('Guilherme', '2008-10-29', '16669608705', 4, 4),
('Giovana B.', '2008-04-29', '16334547821', 5, 5);







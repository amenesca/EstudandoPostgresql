create table disciplinas(
	id_disciplina integer not null,
	nome varchar(15) not null,
	ementa not null,
);

create table professores(
	id_professor integer not null,
	celular varchar(15) not null,
	nome varchar(40) not null,
	id_disciplina integer not null,
	primary key (id_professor),
	foreign key (id_disciplina)
	references disciplinas(id_disciplina)
);

create table livro(
	id_livro integer not null,
	nome varchar(15) not null,
	autor varchar(40) not null,
	sinopse varchar(500),
	id_disciplina integer not null,
	primary key (id_livro),
	foreign key (id_disciplina) references disciplinas(id_disciplina)
);

insert into disciplinas (id_disciplina, nome, ementa) values
(8, 'Biluga', 'Evolução das especies'),
(9, 'Mecatronica', 'Sei lá');

update disciplinas set nome = 'biologia2'
where id_disciplina = 8;

delete from disciplinas where id_disciplina = 9;

alem de criar permissoes para visualização das tabelas, precisamos criar views que sao mascaras que permitem
vermos os dados certos
como criar visualizações para manter os dados sigilosos seguros:

create view matricula_com_sigilo
(
	select
		id_aluno,
		id_matricula,
		validade
	from matriculas
),

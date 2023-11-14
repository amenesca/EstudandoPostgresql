create table disciplinas(
	id_disciplina integer not null,
	nome varchar(15) not null,
	ementa not null,
)

create table professores(
	id_professor integer not null,
	celular varchar(15) not null,
	nome varchar(40) not null,
	id_disciplina integer not null,
	primary key (id_professor),
	foreign key (id_disciplina)
	references disciplinas(id_disciplina)
)

create table livro(
	id_livro integer not null,
	nome varchar(15) not null,
	autor varchar(40) not null,
	sinopse varchar(500),
	id_disciplina integer not null,
	primary key (id_livro),
	foreign key (id_disciplina) references disciplinas(id_disciplina)
)

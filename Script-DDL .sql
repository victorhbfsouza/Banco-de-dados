-- Tabelas

create table usuario (
	id integer primary key autoincrement,
	nome varchar(255) not null,
	username varchar(15) not null unique,
	email text not null,
	cpf varchar(14) not null unique,
	data_nascimento date not null,
	telefone text not null,
	id_endereco integer,
	foreign key(id_endereco) references endereco(id)
);

create table endereco (
	id integer primary key autoincrement,
	cep varchar (10) not null,
	cidade text not null,
	UF text not null,
	bairro text not null,
	rua text not null,
	numero integer not null,
	complemento text
	
);

create table categoria (
	id integer primary key autoincrement,
	nome varchar(50) not null,
	descricao text
);

create table produto (
	id integer primary key autoincrement,
	nome text not null,
	descricao text,
	quantidade integer not null,
	valor_unit text not null,
	data_fab date not null,
	id_vendedor integer,
	id_categoria integer,
	foreign key(id_vendedor) references usuario(id),
	foreign key(id_categoria) references categoria(id)
);

create table usuario_produto_compra (
	id integer primary key autoincrement,
	data_pedido date not null,
	quantidade integer not null,
	id_produto integer,
	id_comprador integer,
	foreign key(id_produto) references produto(id),
	foreign key(id_comprador) references usuario(id)
);

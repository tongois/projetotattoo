CREATE TABLE funcionario(
    id_funcionario double not null primary key,
    telefone double not null,
    endereco varchar(150) not null,
    tattoo_piercing boolean not null,
    nome varchar(150) not null
);

CREATE TABLE usuario(
    id_usuario double not null primary key,
    telefone double not null,
    endereco varchar(150) not null,
    nome varchar(150) not null,
    data_procedimento Date not null,
    procedimento varchar(200) not null
);


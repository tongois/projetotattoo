CREATE TABLE clientes(
    id BIGINT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1)
    , name varchar(200) not null
    , email varchar(200) not null
    , telefone int(11) not null
    , rg int(9) not null
);

CREATE TABLE users(
    id BIGINT not null primary key
        GENERATED ALWAYS AS IDENTITY
        (START WITH 1, INCREMENT BY 1)
    , role varchar(200) not null
    , name varchar(200) not null
    , login varchar(20) not null
    , passwordHash BIGINT not null
);
INSERT INTO users VALUES(default, 'ADMIN', 'Administrator', 'admin', 1509442);
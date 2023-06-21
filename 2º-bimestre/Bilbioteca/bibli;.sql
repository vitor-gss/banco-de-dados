create database biblioteca;
use biblioteca;
create table livros(
	id_livro varchar(10) primary key,
    titulo varchar(50),
    id_autor int,
    id_categoria varchar(50),
    ano_publicação int
);

create table autores(
	id_autor int primary key,
    nome varchar(50),
    data_nascimento date,
    nacionalidade varchar(50)
);

create table categoria(
	id_categoria varchar(50),
	nome varchar(50)
);

insert into livros values ("00001-A", "Em busca de um milagre", 123456789, "301301843-J", 2022);
insert into livros values ("00002-A", "Em não busca de um milagre", 123456789, "301301844-J", 2023);

insert into livros values ("00003-A", "Em não busca de um milagre", 123456789, "301301844-J", 2023);
insert into livros values ("00004-A", "Em não busca de um milagre", 123456789, "301301844-J", 2023);

insert into livros values ("00005-A", "Em não busca de um milagre", 123456789, "301301844-J", 2023);
insert into livros values ("000026-A", "Em não busca de um milagre", 123456789, "301301844-J", 2023);
# Autores ------------------------
insert into autores values (123456789, "David Henrique de Souza Lima", 1955-02-11, "Brasileiro");
insert into autores values (123456780, "Luis Henrique de Souza Lima", 1956-03-30, "Brasileiro");
insert into autores values (123456781, "João Henrique de Souza Lima", 1957-02-30, "Brasileiro");

insert into autores values (123456789, "David Henrique de Souza Lima", 1955-02-30, "Brasileiro");

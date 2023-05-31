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

insert into livros values ("00001-A", "Em busca de um milagre", 123456789, "30130184-A", 2022);
insert into livros values ("00002-A", "Em não busca de um milagre", 123456789, "30130184-B", 2023);

insert into livros values ("00003-A", "David", 123456780, "30130184-C", 2023);
insert into livros values ("00004-A", "Na esperança da morte", 123456780, "30130189-D", 2023);

insert into livros values ("00005-A", "Busca do Edel", 123456781, "30130184-E", 2023);
insert into livros values ("000026-A", "123 Casinha", 123456781, "30930184-D", 2023);
# Autores ------------------------
insert into autores values (123456789, "David Henrique de Souza Lima", "1955-02-11", "Brasileiro");
insert into autores values (123456780, "Luis Henrique de Souza Lima", "1956-03-30", "Brasileiro");
insert into autores values (123456781, "João Henrique de Souza Lima", "1957-02-2", "Brasileiro");

insert into categoria values ("30130184-A", "Romance");
insert into categoria values ("30130184-B", "Mistério");
insert into categoria values ("30130184-C", "Aventura");


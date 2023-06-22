alter table livros add(editora varchar(50));
alter table livros drop ano_publicacao;
update autores set nome="Davi" where id_autor=123456789;
update livros set ano_publicacao=2023 where id_categoria="30130184-A";
delete from livros where id_livro = "000026-A"
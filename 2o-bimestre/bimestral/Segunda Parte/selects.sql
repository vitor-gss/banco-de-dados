-- Qual é o preço médio, máximo e mínimo dos produtos?
select avg(preco),max(preco),min(preco) from produtos;
-- Quantos produtos existem em cada categoria?
select categoria, count(*) as quantidadeProdutos from produtos group by categoria;
-- Quais são as categorias distintas existentes na tabela de produtos?
select distinct categoria as categorias from produtos;
-- Quais categorias possuem mais de 2 produtos?
select categoria from produtos group by categoria having count(*) > 2;
-- Quais são os produtos que possuem a palavra "Livro" em seu nome?
select nome, categoria from produtos where nome like '%Livro%';
-- Quais são os 3 produtos mais caros?
select  nome, categoria, preco from produtos order by preco desc limit 3;
-- Quais produtos têm o preço dentro do intervalo de R$ 50 a R$ 100?
select * from produtos where preco between 50 and 100;
-- Quais são os produtos com ID 1, 3 e 5?
select nome from produtos where id in (1,2,3);
-- Qual é o valor total gasto em produtos da categoria "Eletrônicos"?
select sum(preco) from produtos where categoria = 'Eletrônicos';
-- Quais são os produtos que pertencem às categorias "Vestuário" ou "Acessórios" e possuem um preço entre R$ 30 e R$ 50?
SELECT nome, categoria, preco FROM produtos WHERE categoria IN ('Vestuário', 'Acessórios') AND preco BETWEEN 30 AND 50;



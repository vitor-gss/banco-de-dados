# Quantos clientes de cada cidade a loja tem?
select cidade, COUNT(*) as totalClientes from cliente group by cidade;
# Quantos itens tem cada pedido?
select FK_num_pedido, sum(quantidade) as quantidade from itempedido group by FK_num_pedido;
# Quantos pedidos cada vendedor fez?
select FK_cod_vendedor, count(*) as pedidos from pedido group by FK_cod_vendedor;
# Qual a soma de produtos e a média de produtos em cada pedido?
select FK_num_pedido, sum(quantidade) as soma, round(avg(quantidade), 2) as media from itempedido group by FK_num_pedido;
# Qual o maior, menor e médio prazo de entrega de cada vendedor?
select FK_cod_vendedor, max(prazo_entrega) as maximo, min(prazo_entrega) as minimo, round(avg(prazo_entrega), 2) as media from pedido group by FK_cod_vendedor;
# Quantos pedidos cada item está incluido?
select FK_cod_produto,count(FK_cod_produto) as pedidos from itempedido group by FK_cod_produto;
# Top 3 dos produtos mais vendidos.
select FK_cod_produto, sum(quantidade) as quantidade from itempedido group by FK_cod_produto order by quantidade desc limit 3;
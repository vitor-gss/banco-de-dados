select * from func where cpf = '991.354.854-12'; # Seleciona o funcionário com o CPF especificado
select cpf, nome from func where estado = 'Alagoas'; # Seleciona os nomes e CPFs dos funcionários que são do estado de Alagoas
select estado ,count(*) as QuantidadePorEstado from func group by estado; # Seleciona a quantidade de funcionários por estado.
select cpf, nome from cliente where
	estado = 'Alagoas' and cidade = 'Rio Largo'; # Seleciona os nomes e CPFs dos clientes que são do estado de Alagoas e da cidade de rio largo
select nome, fk_cpf, count(*) as QuantidadeDeLocais from locaisEstudados le 
	join cliente c on c.cpf = le.fk_cpf group by fk_cpf; # Seleciona o nome, cpf e a quantidade de locais estudados de cada cliente

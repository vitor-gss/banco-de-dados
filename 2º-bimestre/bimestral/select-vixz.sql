select * from func where cpf = '991.354.854-12'; # Seleciona o funcionário com o CPF especificado
select cpf, nome from func where estado = 'Alagoas'; # Seleciona os nomes e CPFs dos funcionários que são do estado de Alagoas
select estado ,count(*) as QuantidadePorEstado from func group by estado; # Seleciona a quantidade de funcionários por estado.
select cpf, nome from cliente where
	estado = 'Alagoas' and cidade = 'Rio Largo'; # Seleciona os nomes e CPFs dos clientes que são do estado de Alagoas e da cidade de rio largo
select nome, fk_cpf, count(*) as QuantidadeDeLocais from locaisEstudados le 
	join cliente c on c.cpf = le.fk_cpf group by fk_cpf; # Seleciona o nome, cpf e a quantidade de locais estudados de cada cliente
select * from vagaEmprego where salario > 8000; # Seleciona todos os dados da vaga de emprego que o salário seja maior que 8000
select * from vagaEmprego where empresa = 'IFAL' or empresa = 'Vixz'; # Seleciona todos os dados de uma vaga de emprego onde a empresa é o IFAL ou Vixz
select nomeAssunto, areaAssunto from forum where areaAssunto 
	like 'Tecnologia%'; # Seleciona o nome e a área do assunto onde a área do assunto começe com a palavra tecnologia
select nomeCurso, areaCurso from curso where areaCurso like 'Tec%' and horaCurso 
	between 100 and 120; # Seleciona o nome e a área do curso onde o curso começe com Tec e a carga horária seja entre 100 e 120
select  c.nome, count(*) as cursosInscritos from clienteCurso as cc 
	join cliente as c on cc.fk_cpf = c.cpf group by c.nome; # Seleciona o nome e quantidade de cursos que cada cliente está inscrito
select c.nomeCurso, count(*) as quantidadeClientes from clienteCurso as cc join curso c on cc.fk_idCurso = c.idCurso
	group by c.nomeCurso order by quantidadeClientes desc; # Seleciona quantos clientes estão inscritos em cada curso de forma decrescente
select c.nome as NomeCliente,  fk_cpf cpf,  fk_idAssunto as códigoAssunto, f.nomeAssunto nomeDoAssunto 
	from clienteForum cf JOIN cliente c on cf.fk_cpf = c.cpf 
    JOIN forum f on f.idAssunto = cf.fk_idAssunto; # Seleciona o nome e o cpf do cliente e o código e nome do assunto.
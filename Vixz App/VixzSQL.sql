# Funcionário ----------------------------------------------------------------------
create table func(
	email varchar(50),
	dataNasc date,
	nome varchar(50),
	estado varchar(50),
	cidade varchar(50),
	cpf varchar(14) primary key,
	empresa varchar(50)
);

create table telefoneFunc(
	telefone varchar(11),
	fk_cpf varchar(14),
	foreign key (fk_cpf) references func (cpf),
	primary key(fk_cpf, telefone)
);

insert into func values ('vgss4@vixz.com.br', '2007-03-30', 'Vitor Gabriel da Silva Santos', 'Alagoas', 'Rio Largo', '018.993.564-05', 'Vixz');
insert into func values ('dso7@magalu.com.br', '1981-07-02', 'Diego Santos de Oliveira', 'Rio de Janeiro', 'Rio de Janeiro', '037.294.497-38', 'Magazine Luiza');
insert into func values ('cps12@lame.com.br', '2007-05-29', 'Caroline Paula da Silva', 'Alagoas', 'Marechal Deodoro', '991.354.854-12', 'Lojas Americanas');
# Cliente ----------------------------------------------------------------------
create table cliente(
	email varchar(50),
	dataNasc date,
	nome varchar(50),
	estado varchar(50),
	cidade varchar(50),
	cpf varchar(14) primary key,
	escolaridade varchar(50),
    fk_plano int,
    foreign key (fk_plano) references plano (idPlano)
);

insert into cliente (email, dataNasc, nome, estado, cidade, cpf, escolaridade) values ('paulinmatador34123@gmail.com.br', '2000-03-30', 'João Jagunço Jeremias', 'Alagoas', 'Rio Largo', '444.321.564-56', 'E.Médio Comp.');
insert into cliente (email, dataNasc, nome, estado, cidade, cpf, escolaridade) values ('gabrielminecraftyt@gmail.com.br', '1999-12-25', 'Gabriel João da Silva', 'Acre', 'Rio Branco', '396.214.562-03', 'E.Médio Incomp.');
insert into cliente (email, dataNasc, nome, estado, cidade, cpf, escolaridade) values ('keroensinar@yahoo.com.br', '2005-03-30', 'Kerolaine Ensilhiya Narvanara', 'Alagoas', 'Maceió', '140.428.114-13', 'E.Fundamental Comp');

create table telefoneCliente(
	telefone varchar(11),
	fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
	primary key(fk_cpf, telefone)
);

create table locaisEstudados(
	locaisEstudados varchar(50),
	fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
    primary key(fk_cpf, locaisEstudados)
);

create table locaisTrabalhados(
	locaisTrabalhados varchar(50),
	fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
    primary key(fk_cpf, locaisTrabalhados)
);
# Plano ----------------------------------------------------------------------
create table plano(
	idPlano int primary key,
    valorPlano double,
    nomePlano varchar(20)
);

create table beneficiosPlano(
	beneficiosPlano varchar(50),
	fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
    primary key(fk_cpf, beneficiosPlano)
);

insert into func values ('paulinmatador34123@gmail.com.br', '2000-03-30', 'João Jagunço Jeremias', 'Alagoas', 'Rio Largo', '444.321.564-56', 'E.Médio Comp.');

#  Vagas de Emprego ----------------------------------------------------
create table vagaEmprego(
	idEmprego varchar(9) primary key, # 111111-XX
    empresa varchar(60),
    nomeEmprego varchar (120),
    cargaHora varchar(3),
    salario double
);

create table clienteVaga(
	fk_idEmp varchar(9), # 111111-XX
    fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
    foreign key (fk_idEmp) references vagaEmprego (idEmprego),
    primary key(fk_cpf, fk_idEmp)
);

create table funcVaga(
	fk_idEmp varchar(9), # 111111-XX
    fk_cpf varchar(14),
	foreign key (fk_cpf) references func (cpf),
    foreign key (fk_idEmp) references vagaEmprego (idEmprego),
    primary key(fk_cpf, fk_idEmp)
);
# Fórum ----------------------------------------------------------------------
create table forum(
	idAssunto varchar(21) primary key, # 111111-111111-XXXXX-X
    nomeAssunto varchar(180),
    areaAssunto varchar(80)
);

create table clienteForum(
	fk_idAssunto varchar(21),
	fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
    foreign key (fk_idAssunto) references forum (idAssunto),
	primary key(fk_cpf, fk_idAssunto)
);
# Curso ----------------------------------------------------------------------
create table curso(
	idCurso varchar(7) primary key, # 1111-XX
    horaCurso int,
    areaCurso varchar(80),
    nomeCurso varchar(120)
);

create table clienteCurso(
	fk_idCurso varchar(7),
	fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
    foreign key (fk_idCurso) references curso (idCurso),
	primary key(fk_cpf, fk_idCurso)
);



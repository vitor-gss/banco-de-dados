create database vixz;
use vixz;
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

insert into telefoneFunc values("82998254273", "018.993.564-05");
insert into telefoneFunc values("82998251234", "037.294.497-38");
insert into telefoneFunc values("82998212345", "991.354.854-12");

# Plano ----------------------------------------------------------------------
create table plano(
	idPlano int primary key,
    valorPlano double,
    nomePlano varchar(20)
);

create table beneficiosPlano(
	beneficiosPlano varchar(50),
	fk_idPlano int,
	foreign key (fk_idPlano) references plano (idPlano),
    primary key(fk_idPlano, beneficiosPlano)
);

insert into plano values (001, 39.00, "Júnior");
insert into plano values (002, 59.00, "Pleno");
insert into plano values (003, 79.00, "Senior");

insert into beneficiosplano values ("Acesso a cursos de desenvolvimento pessoal", 001);
insert into beneficiosplano values ("Acesso a cursos de tecnologia", 002);
insert into beneficiosplano values ("Acesso todos os benefícios", 003);

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
insert into cliente values ('paulinmatador34123@gmail.com.br', '2000-03-30', 'João Jagunço Jeremias', 'Alagoas', 'Rio Largo', '444.321.564-56', 'E.Médio Comp.', 1);
insert into cliente values ('gabrielminecraftyt@gmail.com.br', '1999-12-25', 'Gabriel João da Silva', 'Acre', 'Rio Branco', '396.214.562-03', 'E.Médio Incomp.', 2);
insert into cliente values ('keroensinar@yahoo.com.br', '2005-03-30', 'Kerolaine Ensilhiya Narvanara', 'Alagoas', 'Maceió', '140.428.114-13', 'E.Fundamental Comp', 3);

create table telefoneCliente(
	telefone varchar(11),
	fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
	primary key(fk_cpf, telefone)
);

insert into telefoneCliente values("82998256273", "444.321.564-56");
insert into telefoneCliente values("82998251654", "396.214.562-03");
insert into telefoneCliente values("82998212300", "140.428.114-13");

create table locaisEstudados(
	locaisEstudados varchar(50),
	fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
    primary key(fk_cpf, locaisEstudados)
);

insert into locaisEstudados values ("Instituto Federal de Alagoas", "444.321.564-56");
insert into locaisEstudados values ("Colégio Humberto Aranha", "444.321.564-56");
insert into locaisEstudados values ("Universidade de Coimbra", "396.214.562-03");
insert into locaisEstudados values ("Escola Estadual Jô Soares", "140.428.114-13");

create table locaisTrabalhados(
	locaisTrabalhados varchar(50),
	fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
    primary key(fk_cpf, locaisTrabalhados)
);

insert into locaistrabalhados values ("Industrias Syrials", "140.428.114-13");
insert into locaistrabalhados values ("Vixz", "396.214.562-03");
insert into locaistrabalhados values ("Lojas Mundi", "444.321.564-56");

#  Vagas de Emprego ----------------------------------------------------
create table vagaEmprego(
	idEmprego varchar(9) primary key, # 111111-XX ; 67.600.000 combinações possíveis
    empresa varchar(60),
    nomeEmprego varchar (120),
    cargaHora varchar(3),
    salario double
);

insert into vagaemprego values("369874-AA", "Vixz", "Desenvolvedor Sênior", "120", 8612.35);
insert into vagaemprego values("156984-CJ", "LocusOp", "Analista de Finanças", "160", 5421.16);
insert into vagaemprego values("151515-ZX", "IFAL", "Professor de Banco de Dados", "80", 36210.00);


create table clienteVaga(
	fk_idEmp varchar(9), # 111111-XX
    fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
    foreign key (fk_idEmp) references vagaEmprego (idEmprego),
    primary key(fk_cpf, fk_idEmp)
);

insert into clientevaga values ("369874-AA", "444.321.564-56");

create table funcVaga(
	fk_idEmp varchar(9), # 111111-XX
    fk_cpf varchar(14),
	foreign key (fk_cpf) references func (cpf),
    foreign key (fk_idEmp) references vagaEmprego (idEmprego),
    primary key(fk_cpf, fk_idEmp)
);

insert into funcvaga values("369874-AA", "018.993.564-05");

# Fórum ----------------------------------------------------------------------
create table forum(
	idAssunto varchar(21) primary key, # 111111-111111-XXXXX-X ; 20.864.026.368.000.000.000 combinações possíveis
    nomeAssunto varchar(180),
    areaAssunto varchar(80)
);

insert into forum values("987654-123456-ABCDE-A", "Como dar gitpush no github?", "Tecnologia - GitHub");
insert into forum values("456123-789456-FGHIJ-B", "Como convencer meu professor a dar aula de redes de computadores?", "Conselhos");
insert into forum values("789012-345678-KLMNO-C", "Como instalar o wireshark no linux?", "Tecnologia - Linux");

create table clienteForum(
	fk_idAssunto varchar(21),
	fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
    foreign key (fk_idAssunto) references forum (idAssunto),
	primary key(fk_cpf, fk_idAssunto)
);

insert into clienteforum values ("987654-123456-ABCDE-A", "444.321.564-56");

# Curso ----------------------------------------------------------------------
create table curso(
	idCurso varchar(7) primary key, # 1111-XX
    horaCurso int,
    areaCurso varchar(80),
    nomeCurso varchar(120)
);

insert into curso values ("1234-FS", 120, "Tecnologia - Linguagem de Programação", "JavaScript");
insert into curso values ("1568-ZQ", 80, "Tecnologia - Linguagem de Programação", "Python");
insert into curso values ("0002-XX", 100, "Tecnologia - Linguagem de Programação", "Dart");

create table clienteCurso(
	fk_idCurso varchar(7),
	fk_cpf varchar(14),
	foreign key (fk_cpf) references cliente (cpf),
    foreign key (fk_idCurso) references curso (idCurso),
	primary key(fk_cpf, fk_idCurso)
);

insert into clientecurso values("1234-FS", "444.321.564-56");



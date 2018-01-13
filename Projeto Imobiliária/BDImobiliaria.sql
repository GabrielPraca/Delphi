create database BDImobiliaria
GO
use BDImobiliaria

create table TBUsuario(Login varchar(50), Senha varchar(50))
create table TBTipo(CodTipo int identity not null primary key, TipoImovel varchar(50))
create table TBImovel(CodImovel int identity not null primary key, CodTipo int, AreaConstruida varchar(50),
					  QtdeComodos int, Garagem varchar(50), FotoImovel varchar(255), ValorImovel money)
create table TBCliente(CodCliente int identity not null primary key, NomeCliente varchar(50), RG varchar(50),
					   CPF varchar(50), Nascimento varchar(50), Fone varchar(50), EstadoCivil varchar(50))
create table TBAluguel(CodAluguel int identity not null primary key, CodImovel int, CodCliente int,
					   DataInicioContrato varchar(50), DataFimContrato varchar(50))

alter table TBImovel add constraint FKCodTipo foreign key (CodTipo) references TBTipo (CodTipo)
alter table TBAluguel add constraint FKCodImovel foreign key (CodImovel) references TBImovel (CodImovel)
alter table TBAluguel add constraint FKCodCliente foreign key (CodCliente) references TBCliente (CodCliente)

insert into TBUsuario values('admin', '1234')
insert into TBTipo values('Apartamento')
insert into TBTipo values('Conjugado')
insert into TBTipo values('Kitinete')
insert into TBTipo values('Loja')
insert into TBTipo values('Sala Comercial')
insert into TBTipo values('Flat')
insert into TBTipo values('Cobertura')
insert into TBTipo values('Terreno')
insert into TBTipo values('Casa')
insert into TBImovel values(1, '30m²', 3, 'Sim', '', 30000)
insert into TBCliente values('José Almeida', '45.456.569-5', '456.123.789-90', '15/04/1990', '4449-5965', 'Soteiro(a)')
insert into TBAluguel values(1, 1, '04/12/2012', '04/12/2015')

--use master
--drop database BDImobiliaria
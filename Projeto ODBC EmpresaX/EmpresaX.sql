create database BD_Empresax
GO
use bd_empresax

create table Funcionario(Matricula int identity not null primary key, CodDepartamento int,
							Nome varchar(50), DataNascimento datetime, DataMatricula datetime)
create table Departamento(CodDepartamento int identity not null primary key, Departamento varchar(30), Orcamento money)

alter table Funcionario add constraint fkCodDepartamento foreign key(CodDepartamento) references Departamento(CodDepartamento)

insert into Departamento(Departamento, Orcamento) values('Recursos Humanos', 7560.25)
insert into Departamento(Departamento, Orcamento) values('Producao', 25320.5)
insert into Departamento(Departamento, Orcamento) values('Comercial', 2700)
insert into Funcionario(CodDepartamento, Nome, DataNascimento, DataMatricula) values(1, 'João da Silva', '1977-21-11', GETDATE())
insert into Funcionario(CodDepartamento, Nome, DataNascimento, DataMatricula) values(3, 'José dos Santos', '1951-18-10', GETDATE())
insert into Funcionario(CodDepartamento, Nome, DataNascimento, DataMatricula) values(3, 'Maria das Dores', '1989-10-01', GETDATE())
insert into Funcionario(CodDepartamento, Nome, DataNascimento, DataMatricula) values(2, 'Pedrina Farias', '1964-25-08', GETDATE())
insert into Funcionario(CodDepartamento, Nome, DataNascimento, DataMatricula) values(1, 'Carlos Margarido', '1942-28-12', GETDATE())
insert into Funcionario(CodDepartamento, Nome, DataNascimento, DataMatricula) values(3, 'Gabriela Duarte', '1974-28-12', GETDATE())
insert into Funcionario(CodDepartamento, Nome, DataNascimento, DataMatricula) values(2, 'Adriano Borges', '1980-21-03', GETDATE())

--select * from Funcionario
--select * from Departamento

--use master
--drop database bd_empresax
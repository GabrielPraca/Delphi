create database BDLoja
GO
use BDLoja

create table TBProdutos(CodigodoProduto int identity not null primary key, NomedoProduto varchar(50),
						ValorUnit smallmoney, CodigodoSetor int)
create table TBSetor(CodigodoSetor int identity not null primary key, NomedoSetor varchar(50))

alter table TBProdutos add constraint fkCodigodoSetor foreign key (CodigodoSetor) references TBSetor(CodigodoSetor)

insert into TBSetor values('Papelaria')
insert into TBSetor values('Perfumaria')
insert into TBSetor values('Perecíveis')
insert into TBSetor values('Construção')

--use master
--drop database BDLoja
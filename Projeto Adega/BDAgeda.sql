create database BDAdega
GO
use BDAdega

create table TB_Bebida(cod int not null primary key, preco varchar(50), Marca varchar(50),
					   Ano varchar(50), PorcAlc varchar(50), estoque varchar(50))
create database BD_Bandas
GO
use BD_Bandas

create table TB_Bandas(CodBandas int identity not null primary key, Nome varchar(100),
				 Formacao varchar(7), Vocalista varchar(50), Site varchar(50),
				 Pais varchar(50), Foto varchar(200), ultimo_album varchar(250),
				 Preco smallmoney, estilo varchar(50))

create table TB_Usuarios(Senha varchar(20), UserName varchar(50))

insert into TB_Usuarios values('1234', 'admin')

--use master
--drop database BD_Bandas
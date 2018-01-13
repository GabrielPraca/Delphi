create database BDInfo
go
use BDInfo

create table TBDados(codigo int not null identity primary key, nome varchar(30), cidade varchar(40), email varchar(40))

insert into TBDados values('André','Franco da Rocha','yuri_sim@gmail.com')
insert into TBDados values('Gabriel','Franco da Rocha','gabrielviadinho@gmail.com')
insert into TBDados values('Gustavo','Franco da Rocha','farias@hotmail.com')
insert into TBDados values('Débora','Franco da Rocha','debora.egito@gmail.com')
insert into TBDados values('Amanda','Mairiporã','Amanda.boni@hotmail.com')
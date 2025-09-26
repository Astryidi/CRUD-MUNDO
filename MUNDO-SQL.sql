drop database if exists mundo;
create database mundo;
use mundo;

create table tb_pais (
cd_pais int primary key not null auto_increment,
nome  varchar(86) not null,
continente varchar(9) not null, 
populacao bigint not null,
idioma varchar(50) not null
);

create table tb_cidade (
cd_cidade int primary key not null auto_increment,
nome varchar(100) not null,
populacao int not null,
id_pais int not null,
foreign key (id_pais) references tb_pais (cd_pais)
);


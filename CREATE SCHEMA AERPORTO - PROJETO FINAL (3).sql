create schema project_Aeroporto;

use project_Aeroporto;

create table Empresa(

Nome varchar(120) not null,
licenca varchar(120)not null,
Contato_Empresa varchar(120)not null,
Registro_ID varchar(120) primary key not null
);

create table Funcionario(

Nome varchar(120) not null,
Registro_ID varchar(120) not null,
ID_funcionario int primary key NOT NULL AUTO_INCREMENT);

create table Aeronave(

Modelo_Aeronave varchar(120)not null,
Registro_ID varchar(120) not null,
Data_fabricacao date not null,
Quantidade int not null,
Registro_de_Aeronave int primary key not null);


create table Cliente_cadastro(
Nome varchar(120),
Nacionalidade varchar(120),
idade int not null,
Registro_de_passaporte varchar (120) primary key);


create table Reserva(
Data_validade date not null,
ID_Reserva int primary key not null,
Registro_de_passaporte varchar(120) not null);

create table Voos_Disponivel(
Origem varchar(120) not null,
Destino varchar(120) not null,
Empresa varchar (120) not null,
Status_ varchar (120) not null,
ID int primary key not null);

create table Trechos_de_voos(
Aeroporto varchar(120) not null,
Origem varchar(120) not null,
Destino varchar(120) not null,
Data_Trechos date not null,
Hora time not null,
ID_voo int primary key not null);

create table Passageiros(
ID_Reserva int not null,
Registro_de_passaporte varchar (120) not null,
cancelamento date not null,
Prorrogacao  date not null,
primary key (ID_Reserva,Registro_de_passaporte));


create table Registro_de_Voo(
ID_funcionario int not null,
Registro_de_Aeronave int not null,
Registro_ID varchar(120) not null,
ID_voo int not null,
primary key  (ID_funcionario,Registro_de_Aeronave,ID_voo));


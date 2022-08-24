#Add fk funcionário
alter table  Funcionario add foreign key fk_Registro_ID(Registro_ID) references Empresa(Registro_ID);

#Add fk Aeronave
alter table  Aeronave add foreign key fk_Registro_ID(Registro_ID) references Empresa(Registro_ID);


#Add fk Passageiros
alter table Passageiros add foreign key fk_Registro_passaporte(Registro_de_passaporte) references Cliente_cadastro(Registro_de_passaporte);
alter table Passageiros add foreign key fk_ID_Reserva(ID_Reserva) references Reserva (ID_Reserva);

#Add fk Registro_de_Voo
alter table Registro_de_Voo add foreign key fk_ID_funcionario(ID_funcionario) references Funcionario(ID_funcionario);
alter table Registro_de_Voo add foreign key fk_Registro_de_Aeronave(Registro_de_Aeronave) references Aeronave(Registro_de_Aeronave);
alter table Registro_de_Voo add foreign key fk_Registro_ID(Registro_ID) references Empresa(Registro_ID);
alter table Registro_de_Voo add foreign key fk_ID_voo(ID_voo) references Trechos_de_voos(ID_voo);

#Add fk  reserva
alter table reserva add foreign key fk_Registro_passaporte(Registro_de_passaporte) references Cliente_cadastro(Registro_de_passaporte);

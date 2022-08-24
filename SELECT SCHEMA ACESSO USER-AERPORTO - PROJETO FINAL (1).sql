#Questão 6
select * from passageiros;

#Questão 7
select nome, Nacionalidade, idade
from cliente_cadastro
where idade between 20 and 30;

#Questão 8
select e.Nome, f.nome
from empresa as e
inner join funcionario as f
on e.Registro_ID = f.Registro_ID;

#Qustão 9 
select c.nome, c.Registro_de_passaporte
from cliente_cadastro c
where c.Registro_de_passaporte in
	(select p.Registro_de_passaporte
    from passageiros p
    where p.Registro_de_passaporte = '4795428');
    
#Questão 10
create user Junior@localhost
identified by '123456';

GRANT SELECT
on project_aeroporto.cliente_cadastro to Junior@localhost;

GRANT SELECT
ON project_aeroporto.empresa to Junior@localhost;

#ROLL BACK
start transaction;
insert into cliente_cadastro (nome,Nacionalidade,idade,registro_de_passaporte) values ("teste", 'Brasil',20,'1578963');
update cliente_cadastro set Nacionalidade ='Americana' where registro_de_passaporte = '1578963';
delete from cliente_cadastro where registro_de_passaporte = '1578963';
rollback;

#Commit
SET autocommit = 0;
start transaction;
insert into cliente_cadastro (nome,Nacionalidade,idade,registro_de_passaporte) values ("teste02", 'Germany',20,'9578963');
update cliente_cadastro set Nacionalidade ='Americana' where registro_de_passaporte = '9578963';
delete from cliente_cadastro where registro_de_passaporte = '9578963';
commit;
    
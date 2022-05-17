/*C R U D*/
/*CREATE - Inserindo novo registro*/
INSERT INTO controle_de_ponto.registro_ponto (id_pessoa, data_hora_entrada, data_hora_saida) VALUES 
(1,	'2022-02-01	09:00:00',	'2022-02-01	18:00:00');

/*READ - Lendo registros*/
select e.nome_empresa as 'Empresa', p.nome_pessoa as 'Pessoa', 
rg.data_hora_entrada as 'Entrada', rg.data_hora_saida as 'Saída', 
subtime(timediff(rg.data_hora_saida,rg.data_hora_entrada),"01:00:00") AS "horas-trabalhadas"from registro_ponto rg
inner join pessoa p
on rg.id_pessoa = p.id_pessoa
inner join empresa e
on p.id_empresa = e.id_empresa
where p.id_pessoa = 1;

/*U - Atualizando Registro*/
update registro_ponto
set data_hora_saida = '2022-09-30	19:10:49'
where id_pessoa = 4 and data_hora_entrada = '2022-09-30	10:00:09';

/*D - Deletando Registro*/
delete from registro_ponto
where id_pessoa = 1 and data_hora_entrada = '2022-02-01	09:00:00';


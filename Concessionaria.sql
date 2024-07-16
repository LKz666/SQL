create schema vendaCarro;
use vendaCarro;

create table montadora_tb(
	idMontadora int not null auto_increment primary key,
    nome varchar(100) not null,
    cidade varchar(100) not null
);

create table carro_tb(
	idCarro int not null auto_increment primary key,
    idMontadora int not null,
    modelo varchar(50) not null,
    versao varchar(50) not null,
    cor varchar(50) not null,
    cilindrada int not null,
    combustivel varchar(50) not null,
    anoFabricacao int not null,
    foreign key (idMontadora) references montadora_tb(idMontadora)
);

alter table montadora_tb rename to nomeMontadora;

alter table carro_tb add ano_modelo year not null;

alter table carro_tb drop column anoFabricacao;

/* drop table carro_tb */

/* drop schema vendaCarro */

insert into nomeMontadora(idMontadora, nome, cidade) values("1", "Fiat", "Betim");
insert into carro_tb(idCarro, idMontadora, modelo, versao, cor, cilindrada, combustivel, ano_modelo) values ("1", "1", "Palio", "Fire", "Prata", "1000", "Flex", "2015");
insert into carro_tb(idCarro, idMontadora, modelo, versao, cor, cilindrada, combustivel, ano_modelo) values ("2", "1", "Palio", "1.8R", "Prata", "1800", "Flex", "2015");

insert into nomeMontadora(idMontadora, nome, cidade) values("2", "Volkswagen", "São Paulo");
insert into carro_tb(idCarro, idMontadora, modelo, versao, cor, cilindrada, combustivel, ano_modelo) values ("3", "2", "Gol", "Trend", "Preto", "1000", "Flex", "2014");
insert into carro_tb(idCarro, idMontadora, modelo, versao, cor, cilindrada, combustivel, ano_modelo) values ("4", "2", "Gol", "Power", "Preto", "1600", "Flex", "2014");

insert into nomeMontadora(idMontadora, nome, cidade) values("3", "Chevrolet", "Rio de Janeiro");
insert into carro_tb(idCarro, idMontadora, modelo, versao, cor, cilindrada, combustivel, ano_modelo) values ("5", "3", "Vectra", "Elegance", "Cinza", "2000", "Flex", "2013");
insert into carro_tb(idCarro, idMontadora, modelo, versao, cor, cilindrada, combustivel, ano_modelo) values ("6", "3", "Vectra", "Elite", "Cinza", "2000", "Flex", "2013");

insert into nomeMontadora(idMontadora, nome, cidade) values("4", "Ford", "Porto Alegre");
insert into carro_tb(idCarro, idMontadora, modelo, versao, cor, cilindrada, combustivel, ano_modelo) values ("7", "4", "Fusion", "SEL2.5", "Areia", "2500", "Gasolina", "2015");
insert into carro_tb(idCarro, idMontadora, modelo, versao, cor, cilindrada, combustivel, ano_modelo) values ("8", "4", "Fusion", "SELV6", "Areia", "3000", "Gasolina", "2015");

insert into carro_tb(idCarro, idMontadora, modelo, versao, cor, cilindrada, combustivel, ano_modelo) values ("9", "1", "Punto", "Sporting", "Branco", "1800", "Flex", "2015");
insert into carro_tb(idCarro, idMontadora, modelo, versao, cor, cilindrada, combustivel, ano_modelo) values ("10", "1", "Punto", "T-JET", "Branco", "1400", "Gasolina", "2015");

insert into carro_tb(idCarro, idMontadora, modelo, versao, cor, cilindrada, combustivel, ano_modelo) values ("11", "2", "Polo", "Confortline", "Grafite", "1600", "Flex", "2012");
insert into carro_tb(idCarro, idMontadora, modelo, versao, cor, cilindrada, combustivel, ano_modelo) values ("12", "2", "Polo", "GT", "Grafite", "2000", "Flex", "2012");

alter table carro_tb add numeroValvulas int not null;

update carro_tb set numeroValvulas = "8";

update carro_tb set numeroValvulas= "16" where idCarro = "10";
update carro_tb set numeroValvulas= "16" where idCarro = "7";
update carro_tb set numeroValvulas = "24" where idCarro = "8";

select * from carro_tb;

select modelo from carro_tb where numeroValvulas >= "16";

select modelo from carro_tb order by numeroValvulas desc;

select modelo from carro_tb order by numeroValvulas asc;

select max(cilindrada) from carro_tb; 

select avg(cilindrada) from carro_tb;

select modelo from carro_tb where cilindrada >= "1500" and cilindrada <= "2100";
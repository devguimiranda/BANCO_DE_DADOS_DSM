create database companhiaaerea;
use companhiaaerea;

create table voo(
	numvoo int not null,
    pilotovoo varchar(30) not null,
    aeropartvoo varchar(25) not null,
    aerochegavoo varchar(25) not null,
    numseriaviao int not null
    );
    
insert into voo values (1, "issac dos santos", "partida", "chegada", 123456);
    
alter table voo add constraint PK_VOO primary key (numvoo);
alter table voo add constraint FK_AVIAO foreign key (numaviao) references aviao (numaviao);

update voo
set aeropartvoo = "Frank Miloye Milenkovich"
where numvoo = 1;

create table passageiro(
	CPF int not null,
    nomepass varchar(30),
    codassento int not null
    );

alter table passageiro add constraint PK_PASSAGEIRO primary key (CPF);
alter table passageiro add constraint FK_ASSENTO foreign key (codassento) references assento (codassento);
    
create table aviao(
	numaviao int not null,
    modeloaviao varchar(30)
    );

insert into aviao values (123456, "boing 737");

alter table aviao add constraint PK_AVIAO primary key (numaviao);

update aviao
set modeloaviao = "BOEING"
where numaviao = 123456;
    
create table assento(
	codassento int not null,
    numaviao varchar(30) not null
    );
alter table assento change numaviao numaviao int not null;
    
alter table assento add constraint PK_ASSENTO primary key (codassento);
alter table assento add constraint FK_AVIAOASSENTO foreign key (numaviao) references aviao (numaviao);
    
create table economico(
	codassento int not null,
    codeco int not null
    );
    
alter table economico add constraint PK_ECONOMICO primary key (codeco);
alter table assento add constraint FK_ECOASSENTO foreign key (codassento) references assento (codassento);

create table executivo(
	codassento int not null,
    codexe int not null
    );
    
alter table executivo add constraint PK_EXECUTIVO primary key (codexe);
alter table assento add constraint FK_EXEASSENTO foreign key (codassento) references assento (codassento);
# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table diretor (
  id                        bigint not null,
  nome                      varchar(255),
  constraint pk_diretor primary key (id))
;

create table filmes_cult (
  id                        bigint not null,
  nome                      varchar(255),
  tipo                      varchar(255),
  nota                      float,
  duracao                   integer,
  ano                       integer,
  genero                    varchar(255),
  votos                     integer,
  url                       varchar(255),
  curtidas                  bigint,
  diretor_id                bigint,
  constraint pk_filmes_cult primary key (id))
;

create sequence diretor_seq;

create sequence filmes_cult_seq;

alter table filmes_cult add constraint fk_filmes_cult_diretor_1 foreign key (diretor_id) references diretor (id);
create index ix_filmes_cult_diretor_1 on filmes_cult (diretor_id);



# --- !Downs

drop table if exists diretor cascade;

drop table if exists filmes_cult cascade;

drop sequence if exists diretor_seq;

drop sequence if exists filmes_cult_seq;


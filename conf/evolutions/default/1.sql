# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table diretor (
  id                        bigint not null,
  nome                      varchar(255),
  constraint pk_diretor primary key (id))
;

create sequence diretor_seq;




# --- !Downs

drop table if exists diretor cascade;

drop sequence if exists diretor_seq;


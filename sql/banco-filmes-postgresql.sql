CREATE TABLE diretor
(
  id bigint NOT NULL,
  nome character varying(255),
  CONSTRAINT diretor_pkey PRIMARY KEY (id)
);

CREATE TABLE filmes_cult
(
  id integer NOT NULL,
  nome character varying(255),
  tipo character varying(255),
  nota real,
  duracao integer,
  ano integer,
  genero character varying(255),
  votos integer,
  url character varying(255),
  diretor_id bigint,
  CONSTRAINT filmes_cult_pk PRIMARY KEY (id),
  CONSTRAINT diretor_fk FOREIGN KEY (diretor_id)
      REFERENCES diretor (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
);


create sequence filmes_cult_seq start with 200 ;

create sequence diretor_seq start with 200 ;


INSERT INTO diretor (id,nome) VALUES (1,'Adrian Lyne');
INSERT INTO diretor (id,nome) VALUES (2,'Agustín Villaronga');
INSERT INTO diretor (id,nome) VALUES (3,'Alan Parker');
INSERT INTO diretor (id,nome) VALUES (4,'Alejandro Amenábar');
INSERT INTO diretor (id,nome) VALUES (5,'Alejandro Jodorowsky');
INSERT INTO diretor (id,nome) VALUES (6,'Alexander Mackendrick');
INSERT INTO diretor (id,nome) VALUES (7,'Alfred Hitchcock');
INSERT INTO diretor (id,nome) VALUES (8,'Andrei Tarkovsky');
INSERT INTO diretor (id,nome) VALUES (9,'Blake Edwards');
INSERT INTO diretor (id,nome) VALUES (10,'Christophe Gans');
INSERT INTO diretor (id,nome) VALUES (11,'Claude Chabrol');
INSERT INTO diretor (id,nome) VALUES (12,'Dario Argento');
INSERT INTO diretor (id,nome) VALUES (13,'Dennis Hopper');
INSERT INTO diretor (id,nome) VALUES (14,'Donald Cammell');
INSERT INTO diretor (id,nome) VALUES (15,'Federico Fellini');
INSERT INTO diretor (id,nome) VALUES (16,'Francis Coppola');
INSERT INTO diretor (id,nome) VALUES (17,'Francis Ford Coppola');
INSERT INTO diretor (id,nome) VALUES (18,'George A. Romero');
INSERT INTO diretor (id,nome) VALUES (19,'George Lucas');
INSERT INTO diretor (id,nome) VALUES (20,'George Miller');
INSERT INTO diretor (id,nome) VALUES (21,'Godfrey Reggio');
INSERT INTO diretor (id,nome) VALUES (22,'Hayao Miyazaki');
INSERT INTO diretor (id,nome) VALUES (23,'Henri Verneuil');
INSERT INTO diretor (id,nome) VALUES (24,'Henry Selick');
INSERT INTO diretor (id,nome) VALUES (25,'Ingmar Bergman');
INSERT INTO diretor (id,nome) VALUES (26,'Irvin Kershner');
INSERT INTO diretor (id,nome) VALUES (27,'James Cameron');
INSERT INTO diretor (id,nome) VALUES (28,'Jean-Luc Godard');
INSERT INTO diretor (id,nome) VALUES (29,'Jean-Pierre Melville');
INSERT INTO diretor (id,nome) VALUES (30,'Jim Jarmusch');
INSERT INTO diretor (id,nome) VALUES (31,'Joel Coen');
INSERT INTO diretor (id,nome) VALUES (32,'John Boorman');
INSERT INTO diretor (id,nome) VALUES (33,'John McNaughton');
INSERT INTO diretor (id,nome) VALUES (34,'John McTiernan');
INSERT INTO diretor (id,nome) VALUES (35,'John Schlesinger');
INSERT INTO diretor (id,nome) VALUES (36,'John Woo');
INSERT INTO diretor (id,nome) VALUES (37,'Lewis Gilbert');
INSERT INTO diretor (id,nome) VALUES (38,'Lindsay Anderson');
INSERT INTO diretor (id,nome) VALUES (39,'Luis Bunuel');
INSERT INTO diretor (id,nome) VALUES (40,'Marc Caro');
INSERT INTO diretor (id,nome) VALUES (41,'Marco Ferreri');
INSERT INTO diretor (id,nome) VALUES (42,'Martin Scorsese');
INSERT INTO diretor (id,nome) VALUES (43,'Michael Anderson');
INSERT INTO diretor (id,nome) VALUES (44,'Michael Wadleigh');
INSERT INTO diretor (id,nome) VALUES (45,'Michelangelo Antonioni');
INSERT INTO diretor (id,nome) VALUES (46,'Mike Nichols');
INSERT INTO diretor (id,nome) VALUES (47,'M. Night Shyamalan');
INSERT INTO diretor (id,nome) VALUES (48,'Monte Hellman');
INSERT INTO diretor (id,nome) VALUES (49,'Neil Jordan');
INSERT INTO diretor (id,nome) VALUES (50,'Nicolas Roeg');
INSERT INTO diretor (id,nome) VALUES (51,'Ole Bornedal');
INSERT INTO diretor (id,nome) VALUES (52,'Oliver Stone');
INSERT INTO diretor (id,nome) VALUES (53,'Paul Verhoeven');
INSERT INTO diretor (id,nome) VALUES (54,'Peter Hunt');
INSERT INTO diretor (id,nome) VALUES (55,'Quentin Tarantino');
INSERT INTO diretor (id,nome) VALUES (56,'Richard Brooks');
INSERT INTO diretor (id,nome) VALUES (57,'Ridley Scott');
INSERT INTO diretor (id,nome) VALUES (58,'Robert Moore');
INSERT INTO diretor (id,nome) VALUES (59,'Roman Polanski');
INSERT INTO diretor (id,nome) VALUES (60,'Sam Peckinpah');
INSERT INTO diretor (id,nome) VALUES (61,'Sergio Leone');
INSERT INTO diretor (id,nome) VALUES (62,'Shin''ya Tsukamoto');
INSERT INTO diretor (id,nome) VALUES (63,'Spike Jonze');
INSERT INTO diretor (id,nome) VALUES (64,'Stanley Kubrick');
INSERT INTO diretor (id,nome) VALUES (65,'Steven Spielberg');
INSERT INTO diretor (id,nome) VALUES (66,'Terence Young');
INSERT INTO diretor (id,nome) VALUES (67,'Terry Gilliam');
INSERT INTO diretor (id,nome) VALUES (68,'Terry Jones');
INSERT INTO diretor (id,nome) VALUES (69,'Tobe Hooper');
INSERT INTO diretor (id,nome) VALUES (70,'Tony Scott');
INSERT INTO diretor (id,nome) VALUES (71,'William Peter Blatty');
INSERT INTO diretor (id,nome) VALUES (72,'Woody Allen');
INSERT INTO diretor (id,nome) VALUES (73,'Yasuzô Masumura');

INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (1,'Acossado','Feature Film',7.9,90,1960,'crime + drama',37398,'http://www.imdb.com/title/tt0053472/',28);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (2,'Psicose','Feature Film',8.6,109,1960,'horror + mystery + thriller',274812,'http://www.imdb.com/title/tt0054215/',7);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (3,'O Satânico Dr. No','Feature Film',7.3,110,1962,'action + adventure + crime + thriller',85055,'http://www.imdb.com/title/tt0055928/',66);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (4,'A Pantera Cor-de-Rosa','Feature Film',7.1,115,1963,'comedy + crime',28836,'http://www.imdb.com/title/tt0057413/',9);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (5,'O Desprezo','Feature Film',7.6,103,1963,'drama',14422,'http://www.imdb.com/title/tt0057345/',28);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (6,'Dr. Fantástico','Feature Film',8.5,95,1964,'comedy + sci_fi + war',250450,'http://www.imdb.com/title/tt0057012/',64);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (7,'Julieta dos Espíritos','Feature Film',7.4,137,1965,'comedy + drama + fantasy',6538,'http://www.imdb.com/title/tt0059229/',15);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (8,'Repulsa ao Sexo','Feature Film',7.8,105,1965,'horror + thriller',25108,'http://www.imdb.com/title/tt0059646/',59);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (9,'Por uns Dólares a Mais','Feature Film',8.3,132,1965,'western',95403,'http://www.imdb.com/title/tt0059578/',61);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (10,'Três Homens em Conflito','Feature Film',9.0,161,1966,'adventure + western',326144,'http://www.imdb.com/title/tt0060196/',61);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (11,'Blow-Up - Depois Daquele Beijo','Feature Film',7.6,111,1966,'drama + mystery + thriller',30691,'http://www.imdb.com/title/tt0060176/',45);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (12,'Quando Duas Mulheres Pecam','Feature Film',8.1,85,1966,'drama + mystery + thriller',36927,'http://www.imdb.com/title/tt0060827/',25);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (13,'O Samurai','Feature Film',8.1,105,1967,'crime + drama + mystery + thriller',21156,'http://www.imdb.com/title/tt0062229/',29);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (14,'A Bela da Tarde','Feature Film',7.7,101,1967,'drama',21261,'http://www.imdb.com/title/tt0061395/',39);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (15,'A Dança dos Vampiros','Feature Film',7.1,108,1967,'comedy + horror',18097,'http://www.imdb.com/title/tt0061655/',59);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (16,'A Primeira Noite de um Homem','Feature Film',8.1,106,1967,'comedy + drama + romance',150507,'http://www.imdb.com/title/tt0061722/',46);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (17,'Não Faça Onda','Feature Film',5.9,97,1967,'comedy',608,'http://www.imdb.com/title/tt0061590/',6);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (18,'À Queima-Roupa','Feature Film',7.4,92,1967,'crime + drama + thriller',10200,'http://www.imdb.com/title/tt0062138/',32);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (19,'A Sangue Frio','Feature Film',8.0,134,1967,'crime + drama + history',15169,'http://www.imdb.com/title/tt0061809/',56);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (20,'2001 - Uma Odisséia no Espaço','Feature Film',8.3,160,1968,'adventure + mystery + sci_fi',276938,'http://www.imdb.com/title/tt0062622/',64);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (21,'Se...','Feature Film',7.6,111,1968,'drama',12987,'http://www.imdb.com/title/tt0063850/',38);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (22,'O Bebê de Rosemary','Feature Film',8.0,136,1968,'drama + horror + mystery',105275,'http://www.imdb.com/title/tt0063522/',59);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (23,'A Noite dos Mortos-Vivos','Feature Film',7.9,96,1968,'horror',67067,'http://www.imdb.com/title/tt0063350/',18);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (24,'Era uma Vez no Oeste','Feature Film',8.7,175,1968,'adventure + western',146986,'http://www.imdb.com/title/tt0064116/',61);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (25,'Meu Ódio Será Sua Herança','Feature Film',8.0,145,1969,'western',51585,'http://www.imdb.com/title/tt0065214/',60);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (26,'Sem Destino','Feature Film',7.3,95,1969,'drama',58748,'http://www.imdb.com/title/tt0064276/',13);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (27,'Perdidos na Noite','Feature Film',7.9,113,1969,'drama',58979,'http://www.imdb.com/title/tt0064665/',35);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (28,'007 - A Serviço Secreto de Sua Majestade','Feature Film',6.8,142,1969,'action + adventure + crime + romance + thriller',41747,'http://www.imdb.com/title/tt0064757/',54);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (29,'A Besta Deve Morrer','Feature Film',7.7,110,1969,'thriller',2185,'http://www.imdb.com/title/tt0064861/',11);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (30,'Cega Obsessão','Feature Film',7.1,86,1969,'drama + horror',1873,'http://www.imdb.com/title/tt0140384/',73);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (31,'Zabriskie Point','Feature Film',6.9,110,1970,'drama + romance',8000,'http://www.imdb.com/title/tt0066601/',45);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (32,'A Clockwork Orange','Feature Film',8.4,136,1971,'crime + drama + sci_fi',359551,'http://www.imdb.com/title/tt0066921/',64);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (33,'Corrida Sem Fim','Feature Film',7.2,102,1971,'drama',6256,'http://www.imdb.com/title/tt0067893/',48);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (34,'Sob o Domínio do Medo','Feature Film',7.6,118,1971,'drama + thriller',35991,'http://www.imdb.com/title/tt0067800/',60);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (35,'Amargo Pesadelo','Feature Film',7.8,110,1972,'adventure + drama + thriller',61193,'http://www.imdb.com/title/tt0068473/',32);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (36,'Solaris','Feature Film',8.0,167,1972,'drama + sci_fi',36132,'http://www.imdb.com/title/tt0069293/',8);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (37,'Pat Garrett & Billy the Kid','Feature Film',7.3,122,1973,'drama + history + western',10307,'http://www.imdb.com/title/tt0070518/',60);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (38,'Louca Paixão','Feature Film',7.1,108,1973,'drama + romance',6030,'http://www.imdb.com/title/tt0070842/',53);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (39,'A Comilança','Feature Film',7.1,130,1973,'comedy + drama',6707,'http://www.imdb.com/title/tt0070130/',41);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (40,'O Dorminhoco','Feature Film',7.2,89,1973,'comedy + sci_fi',25861,'http://www.imdb.com/title/tt0070707/',72);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (41,'O Poderoso Chefão II','Feature Film',9.0,200,1974,'crime + drama',493514,'http://www.imdb.com/title/tt0071562/',17);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (42,'O Massacre da Serra Elétrica','Feature Film',7.5,83,1974,'horror',68231,'http://www.imdb.com/title/tt0072271/',69);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (43,'Prelúdio Para Matar','Feature Film',7.6,126,1975,'horror + mystery + thriller',15687,'http://www.imdb.com/title/tt0073582/',12);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (44,'Tubarão','Feature Film',8.1,124,1975,'adventure + horror + thriller',269968,'http://www.imdb.com/title/tt0073195/',65);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (45,'Taxi Driver','Feature Film',8.4,113,1976,'crime + drama',323976,'http://www.imdb.com/title/tt0075314/',42);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (46,'O Inquilino','Feature Film',7.7,126,1976,'fantasy + mystery + thriller',19776,'http://www.imdb.com/title/tt0074811/',59);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (47,'Assassinato por Morte','Feature Film',7.3,94,1976,'comedy + mystery + thriller + crime',18635,'http://www.imdb.com/title/tt0074937/',58);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (48,'O Homem Que Caiu na Terra','Feature Film',6.6,139,1976,'sci_fi + drama',12027,'http://www.imdb.com/title/tt0074851/',50);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (49,'Fuga no Século 23','Feature Film',6.8,119,1976,'action + adventure + sci_fi',30090,'http://www.imdb.com/title/tt0074812/',43);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (50,'Guerra nas Estrelas','Feature Film',8.7,121,1977,'action + adventure + fantasy + sci_fi',589294,'http://www.imdb.com/title/tt0076759/',19);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (51,'007 - O Espião Que Me Amava','Feature Film',7.0,125,1977,'action + adventure + crime + thriller',55500,'http://www.imdb.com/title/tt0076752/',37);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (52,'Geração Proteus','Feature Film',6.3,94,1977,'horror + sci_fi',4665,'http://www.imdb.com/title/tt0075931/',14);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (53,'Suspiria','Feature Film',7.4,98,1977,'horror',33234,'http://www.imdb.com/title/tt0076786/',12);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (54,'Apocalypse Now','Feature Film',8.5,153,1979,'drama + war',311869,'http://www.imdb.com/title/tt0078788/',17);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (55,'Zombie - O Despertar dos Mortos','Feature Film',8.0,127,1978,'horror',70363,'http://www.imdb.com/title/tt0077402/',18);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (56,'A Vida de Brian','Feature Film',8.1,94,1979,'comedy',184797,'http://www.imdb.com/title/tt0079470/',68);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (57,'I... comme Icare','Feature Film',7.8,120,1979,'crime + drama + mystery + thriller',1864,'http://www.imdb.com/title/tt0079322/',23);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (58,'Stalker','Feature Film',8.0,163,1979,'drama + sci_fi',43942,'http://www.imdb.com/title/tt0079944/',8);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (59,'Star Wars: Episódio V - O Império Contra-Ataca','Feature Film',8.8,124,1980,'action + adventure + sci_fi',523947,'http://www.imdb.com/title/tt0080684/',26);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (60,'The Ninth Configuration','Feature Film',7.1,118,1980,'comedy + drama + thriller',3086,'http://www.imdb.com/title/tt0081237/',71);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (61,'O Iluminado','Feature Film',8.5,144,1980,'horror + mystery',384386,'http://www.imdb.com/title/tt0081505/',64);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (62,'Mad Max 2: A Caçada Continua','Feature Film',7.6,95,1981,'action + adventure + thriller',80857,'http://www.imdb.com/title/tt0082694/',20);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (63,'Lobos','Feature Film',6.2,115,1981,'horror + thriller',5041,'http://www.imdb.com/title/tt0083336/',44);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (64,'Excalibur','Feature Film',7.3,140,1981,'adventure + drama + fantasy',38132,'http://www.imdb.com/title/tt0082348/',32);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (65,'Blade Runner -  o Caçador de Andróides','Feature Film',8.2,117,1982,'drama + sci_fi + thriller',328887,'http://www.imdb.com/title/tt0083658/',57);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (66,'Os Fantasmas do Chapeleiro','Feature Film',7.0,120,1982,'crime + mystery + thriller',682,'http://www.imdb.com/title/tt0083925/',11);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (67,'Koyaanisqatsi - Uma Vida Fora de Equilíbrio','Documentary',8.1,86,1982,'documentary + music',19572,'http://www.imdb.com/title/tt0085809/',21);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (68,'Fome de Viver','Feature Film',6.4,97,1983,'fantasy + horror + romance + thriller',12981,'http://www.imdb.com/title/tt0085701/',70);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (69,'O Exterminador do Futuro','Feature Film',8.1,107,1984,'action + sci_fi',381797,'http://www.imdb.com/title/tt0088247/',27);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (70,'A Companhia dos Lobos','Feature Film',6.6,95,1984,'horror + fantasy',9402,'http://www.imdb.com/title/tt0087075/',49);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (71,'Nausicaa - A Princesa do Vale dos Ventos','Feature Film',8.0,117,1984,'animation + action + adventure + drama + fantasy + sci_fi',54011,'http://www.imdb.com/title/tt0087544/',22);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (72,'A Lenda','Feature Film',6.2,94,1985,'fantasy + adventure + romance',34371,'http://www.imdb.com/title/tt0089469/',57);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (73,'Brazil: O Filme','Feature Film',7.9,132,1985,'drama + fantasy + sci_fi',119759,'http://www.imdb.com/title/tt0088846/',67);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (74,'Retrato de um Assassino','Feature Film',7.0,83,1986,'biography + crime + drama + horror + thriller',17700,'http://www.imdb.com/title/tt0099763/',33);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (75,'Tras el cristal','Feature Film',6.8,110,1987,'drama + horror',2073,'http://www.imdb.com/title/tt0090197/',2);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (76,'Arizona Nunca Mais','Feature Film',7.4,94,1987,'comedy + crime',77202,'http://www.imdb.com/title/tt0093822/',31);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (77,'Coração Satânico','Feature Film',7.3,113,1987,'horror + mystery + thriller',47621,'http://www.imdb.com/title/tt0092563/',3);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (78,'Duro de Matar','Feature Film',8.3,131,1988,'action + thriller',398261,'http://www.imdb.com/title/tt0095016/',34);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (79,'Santa sangre','Feature Film',7.5,123,1989,'drama + horror',9676,'http://www.imdb.com/title/tt0098253/',5);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (80,'The Killer - O Matador','Feature Film',7.9,111,1989,'action + crime + thriller',31963,'http://www.imdb.com/title/tt0097202/',36);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (81,'Alucinações do Passado','Feature Film',7.5,113,1990,'drama + horror + mystery',56994,'http://www.imdb.com/title/tt0099871/',1);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (82,'Bala na Cabeça','Feature Film',7.5,136,1990,'crime + drama + thriller',6642,'http://www.imdb.com/title/tt0099426/',36);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (83,'Barton Fink - Delírios de Hollywood','Feature Film',7.7,116,1991,'drama',64931,'http://www.imdb.com/title/tt0101410/',31);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (84,'Delicatessen','Feature Film',7.7,99,1991,'comedy + fantasy + sci_fi',51674,'http://www.imdb.com/title/tt0101700/',40);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (85,'Cães de Aluguel','Feature Film',8.4,99,1992,'crime + thriller',420325,'http://www.imdb.com/title/tt0105236/',55);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (86,'Amor à Queima Roupa','Feature Film',7.9,120,1993,'crime + thriller',124771,'http://www.imdb.com/title/tt0108399/',70);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (87,'O Estranho Mundo de Jack','Feature Film',8.0,76,1993,'animation + family + fantasy + musical',163650,'http://www.imdb.com/title/tt0107688/',24);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (88,'Nightwatch - Perigo na Noite','Feature Film',7.3,107,1994,'horror + thriller',9806,'http://www.imdb.com/title/tt0110631/',51);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (89,'Na Roda da Fortuna','Feature Film',7.3,111,1994,'comedy',53071,'http://www.imdb.com/title/tt0110074/',31);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (90,'Pulp Fiction: Tempo de Violência','Feature Film',9.0,154,1994,'crime + drama + thriller',838247,'http://www.imdb.com/title/tt0110912/',55);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (91,'Assassinos por Natureza','Feature Film',7.2,118,1994,'crime + drama',130772,'http://www.imdb.com/title/tt0110632/',52);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (92,'Riget','Mini-Series',8.4,280,1994,'comedy + drama + fantasy + horror + mystery',10311,'http://www.imdb.com/title/tt0108906/',null);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (93,'Os 12 Macacos','Feature Film',8.1,129,1995,'mystery + sci_fi + thriller',319642,'http://www.imdb.com/title/tt0114746/',67);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (94,'Tokyo Fist','Feature Film',7.1,87,1995,'action + drama + thriller',1750,'http://www.imdb.com/title/tt0114690/',62);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (95,'O Combate - Lágrimas do Guerreiro','Feature Film',6.3,102,1995,'action + crime + thriller',7895,'http://www.imdb.com/title/tt0112750/',10);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (96,'Morte ao Vivo','Feature Film',7.4,125,1996,'horror + mystery + thriller',20229,'http://www.imdb.com/title/tt0117883/',4);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (97,'Homem Morto','Feature Film',7.6,121,1995,'drama + fantasy + western',55878,'http://www.imdb.com/title/tt0112817/',30);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (98,'Jackie Brown','Feature Film',7.5,154,1997,'crime + drama + thriller',173812,'http://www.imdb.com/title/tt0119396/',55);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (99,'O Sexto Sentido','Feature Film',8.2,107,1999,'drama + mystery + thriller',479507,'http://www.imdb.com/title/tt0167404/',47);
INSERT INTO filmes_cult (id,nome,tipo,nota,duracao,ano,genero,votos,url,diretor_id) VALUES (100,'Quero Ser John Malkovich','Feature Film',7.8,112,1999,'comedy + fantasy + sci_fi',196825,'http://www.imdb.com/title/tt0120601/',63);


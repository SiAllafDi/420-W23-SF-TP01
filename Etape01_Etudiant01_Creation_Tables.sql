/* 
 Travail pratique 1
 --> Nom de la première personne
 Nom de la deuxième personne
 
 Date  JJ-MM-AAAA                                             
*/
DROP DATABASE IF EXISTS PosteClientDFC;
CREATE DATABASE IF NOT EXISTS PosteClientDFC;

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 1 : Création des tables                      --
-- -----------------------------------------------------
create table local (
id_local int unsigned primary key,
nom_local Varchar(45) null

)engine = innodb;
create table fabricant (
id_fabricant int unsigned primary key,
nom_fabricant Varchar(45) null

)engine = innodb;


create table poste (
id_poste int unsigned primary key ,
desc_poste VARCHAR(45) null,
des_processeur varchar(45) null,
nb_ram_mo varchar (45) ,
tail_disque_giga int unsigned,
id_fabricant int unsigned,
id_local int unsigned ,
FOREIGN KEY(id_fabricant) REFERENCES fabricant(id_fabricant) ON DELETE no action on update no action,
 FOREIGN KEY(id_local) REFERENCES local(id_local) ON DELETE no action on update no action
)engine = innodb;
create table peripherique(
id_peripherique int unsigned primary key ,
nom_peripherique varchar(45)null ,
id_poste int unsigned,
id_fabricant int unsigned,
FOREIGN KEY(id_fabricant) REFERENCES fabricant(id_fabricant) ON DELETE no action on update no action,
FOREIGN KEY(id_poste) REFERENCES poste (id_poste) ON DELETE no action on update no action
)engine=innodb;
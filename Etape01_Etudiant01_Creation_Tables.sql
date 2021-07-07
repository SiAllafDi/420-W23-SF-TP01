/* 
 Travail pratique 1
 --> Sidi Allaf
 Nom de la deuxième personne
 
 Date  06-07-2021                                             
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

CREATE TABLE IF NOT EXISTS usager (
  id_usager INT UNSIGNED PRIMARY KEY,
  nom_usager VARCHAR(45) NOT NULL,
  prenom_usager VARCHAR(45) NOT NULL,
  telephone_usager VARCHAR(15) NULL,
  local_id_local INT UNSIGNED NULL,
  
    FOREIGN KEY (local_id_local)
    REFERENCES local (id_local)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS editeur (
  id_editeur INT UNSIGNED  PRIMARY KEY ,
  nom_editeur VARCHAR(45) NOT NULL)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS logiciel (
  id_logiciel INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nom_logiciel VARCHAR(45) NOT NULL,
  nb_licence INT NULL,
  id_editeur INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_editeur)
    REFERENCES editeur (id_editeur)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS poste_has_logiciel (
  id_poste INT UNSIGNED NOT NULL,
  id_logiciel INT UNSIGNED NOT NULL,
  PRIMARY KEY (id_poste, id_logiciel),
    FOREIGN KEY (id_poste)
    REFERENCES poste (id_poste)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (id_logiciel)
    REFERENCES logiciel (id_logiciel)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS usager_has_poste (
  id_usager INT UNSIGNED NOT NULL,
  id_poste INT UNSIGNED NOT NULL,
  PRIMARY KEY (id_usager, id_poste),
    FOREIGN KEY (id_usager)
    REFERENCES usager (id_usager)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    FOREIGN KEY (id_poste)
    REFERENCES poste (id_poste)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
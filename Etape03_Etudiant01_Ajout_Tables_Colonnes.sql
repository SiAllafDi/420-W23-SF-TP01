/* 
 Travail pratique 1
 --> Sidi Allaf
 Nom de la deuxième personne
 
 Date  JJ-MM-AAAA                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 3 : Ajout de tables et de colonnes           --
-- -----------------------------------------------------
create table if not exists typeusager(
id_typeUsager int unsigned primary key,
nom_statut varchar(45) null 

)engine=innodb;
alter table usager 
add column id_typeUsager int unsigned,
add constraint Fk_id_typeUsager foreign key (id_typeUsager) REFERENCES typeusager(id_typeUsager) ON DELETE no action on update no action;
select * from typeusager;
INSERT INTO `posteclientdfc`.`typeusager` (`id_typeUsager`, `nom_statut`) VALUES ('1', 'Professeur');
INSERT INTO `posteclientdfc`.`typeusager` (`id_typeUsager`, `nom_statut`) VALUES ('2', 'Employé');
INSERT INTO `posteclientdfc`.`typeusager` (`id_typeUsager`, `nom_statut`) VALUES ('3', 'Étudiant');

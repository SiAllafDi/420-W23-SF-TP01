/* 
 Travail pratique 1
 --> Sidi Allaf
 Nom de la deuxième personne
 
 Date  08-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 3 : Ajout de tables et de colonnes           --
-- -----------------------------------------------------
create table if not exists type_peripherique(
id_type_peripherique int unsigned primary key,
nom_type_peripherique varchar(25) null 

)engine=innodb;
Alter table local 
add column nb_bureau int unsigned ,
add column nb_prise_ethernet int unsigned
;
--
alter table peripherique 
add column id_type_peripherique int unsigned  ,
add constraint Fk_id_type_peripherique foreign key (id_type_peripherique) REFERENCES type_peripherique(id_type_peripherique) ON DELETE no action on update no action;
INSERT INTO `posteclientdfc`.`type_peripherique` (`id_type_peripherique`, `nom_type_peripherique`) VALUES ('1', 'Imprimantes');
INSERT INTO `posteclientdfc`.`type_peripherique` (`id_type_peripherique`, `nom_type_peripherique`) VALUES ('2', 'Souris');
INSERT INTO `posteclientdfc`.`type_peripherique` (`id_type_peripherique`, `nom_type_peripherique`) VALUES ('3', 'Clavier');
INSERT INTO `posteclientdfc`.`type_peripherique` (`id_type_peripherique`, `nom_type_peripherique`) VALUES ('4', 'Écran');

alter table local 
add column imprimante_id_peripherique int unsigned ,
add constraint Fk_imprimante_id foreign key (imprimante_id_peripherique) references peripherique(id_peripherique) on delete no action on update no action;
alter table local 
add constraint nom_Unique unique  (nom_local) ,
modify nom_local varchar(45) not null;
alter table fabricant 
add constraint nomFabricant_Unique unique  (nom_fabricant) ,
modify nom_fabricant varchar(45) not null;
 


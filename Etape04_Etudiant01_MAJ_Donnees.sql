/* 
 Travail pratique 1
 --> Sidi Allaf
 Nom de la deuxième personne
 
 Date  11-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 4 : Mise à jour des données (Clause UPDATE)  --
-- -----------------------------------------------------
Update local 
set nb_bureau = 16, nb_prise_ethernet = 16 ,imprimante_id_peripherique=674
where nom_local = "P-210";
UPDATE local 
set nb_bureau = 27, nb_prise_ethernet = 27 ,imprimante_id_peripherique=676
where nom_local = "P-308";
UPDATE local 
set nb_bureau = 27, nb_prise_ethernet = 27 ,imprimante_id_peripherique=677
where nom_local = "P-309";
UPDATE usager
set Id_typeUsager =1
where id_usager between 1 and 9;
UPDATE usager
set Id_typeUsager =2
where id_usager between 100 and 999;
UPDATE usager
set Id_typeUsager =3
where id_usager >= 1000 ;


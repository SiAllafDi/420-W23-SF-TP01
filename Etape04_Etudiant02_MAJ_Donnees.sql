/* 
 Travail pratique 1
 Nom de la première personne
 -->Kouakou Koffi Eric B.
 
 Date  01-08-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 4 : Mise à jour des données (Clause UPDATE)  --
-- -----------------------------------------------------

Update local 
set nb_bureau = 27, nb_prise_ethernet = 27 ,imprimante_id_peripherique=678
where nom_local = "P-409";
Update local 
set nb_bureau = 5, nb_prise_ethernet = 6 ,imprimante_id_peripherique=673
where nom_local = "P-416";
Update local 
set nb_bureau = 27, nb_prise_ethernet = 27 ,imprimante_id_peripherique=679
where nom_local = "P-418";

select *from peripherique;

UPDATE peripherique
set id_type_peripherique =4
where id_peripherique between 1 and 212;

UPDATE peripherique
set id_type_peripherique =2
where nom_peripherique ="Souris";

UPDATE peripherique
set id_type_peripherique =3
where nom_peripherique='Clavier';

UPDATE peripherique
set id_type_peripherique =1
where id_peripherique between 672 and 679;
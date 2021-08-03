/* 
 Travail pratique 1
 Nom de la première personne
 --> Kouakou Koffi Eric B.
 
 Date  02-08-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 5 : Requêtes de sélections                   --
-- -----------------------------------------------------

SELECT nom_local as 'No.local' , nb_bureau as 'No.bureau',nb_prise_ethernet as'Nb.prise ethernet', imprimante_id_peripherique as 'No.Imprimante'
from local;

select concat(nom_usager ,',',  prenom_usager ) as "Nom d'usager", nom_local as Local, desc_poste as 'Description du poste'
from usager left  join local 
on usager.local_id_local = local.id_local
 INNER JOIN usager_has_poste 
on  usager.id_usager = usager_has_poste.id_usager
 INNER JOIN poste
on usager_has_poste.id_poste = poste.id_poste
Order by concat(nom_usager,', ',prenom_usager)
;


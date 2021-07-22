/* 
 Travail pratique 1
 --> Sidi Allaf
 Nom de la deuxième personne
 
 Date  20-07-2021                                             
*/

USE PosteClientDFC;
-- -----------------------------------------------------
-- Étape 5 : Requêtes de sélections                   --
-- -----------------------------------------------------
SELECT nom_local AS 'No.local',nb_bureau as 'Nb.bureau',nb_prise_ethernet as 'Nb.prise ethernet',imprimante_id_peripherique as 'No.imprimante',nom_peripherique as'Nom de l\'imprimante'
from local  join peripherique 
on imprimante_id_peripherique=id_peripherique;


SELECT  (nom_logiciel)   ,  COUNT(id_poste) as 'Nb.d\'installation sur poste'
from logiciel
     left join (poste_has_logiciel)
    on logiciel.id_logiciel=poste_has_logiciel.id_logiciel
    where id_poste>0
    group by nom_logiciel  
    order by COUNT(id_poste) desc;
 